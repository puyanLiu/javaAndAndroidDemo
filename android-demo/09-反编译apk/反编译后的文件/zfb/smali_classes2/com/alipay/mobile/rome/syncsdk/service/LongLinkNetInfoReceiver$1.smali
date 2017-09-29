.class Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver$1;
.super Ljava/lang/Object;
.source "LongLinkNetInfoReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Intent;

.field private final synthetic b:Landroid/content/Context;

.field final synthetic this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver$1;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver$1;->b:Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver$1;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver$1;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isNetAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 98
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver$1;->a:Landroid/content/Intent;

    const-string/jumbo v3, "noConnectivity"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 100
    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;

    iget-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver$1;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->getNetworkType(Landroid/content/Context;)I

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->access$0(Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;ZI)V

    .line 102
    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver$1;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver$1;->a:Landroid/content/Intent;

    invoke-static {v3, v4}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 103
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 104
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive[net disconnect]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopConnectTimeOutTimer()V

    .line 106
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->setLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    .line 109
    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    .line 111
    if-nez v0, :cond_1

    .line 112
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive: [ connManager=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->access$1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Net state handle found exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->access$1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceive [ isNetAvailable="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ][action="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/constant/LinkConstants;->IS_LINK_TIMEOUT:Z

    .line 124
    const-string/jumbo v0, "mmtp"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    .line 129
    if-nez v0, :cond_3

    .line 130
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive:[ connManager=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isForceStopped()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive: [ isForceStopped=true ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->setLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    .line 141
    const-string/jumbo v1, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendHeartBeatPacket()V

    goto/16 :goto_0

    .line 147
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkNetInfoReceiver;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onReceive: [ isConnected=false - need connect ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isReconnEnable()Z

    move-result v1

    if-nez v1, :cond_6

    .line 150
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setFailCountForOnceEnable()V

    .line 153
    :cond_6
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
