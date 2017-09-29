.class public final Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;
.super Ljava/lang/Object;
.source "LongLinkManager2.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;


# instance fields
.field private volatile c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->b:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->b:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->b:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->b:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getLongLinkCallback()Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    return-object v0
.end method

.method public final init(Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;)V
    .locals 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    .line 58
    if-nez p1, :cond_0

    .line 59
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "init: [ callback=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final isConnected()Z
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->getLinkState()Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    move-result-object v0

    .line 201
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    if-ne v0, v1, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMmtpSwitchOn()Z
    .locals 6

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 223
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledAmnet(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 225
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isMmtpSwitchOn: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    :goto_0
    return v0

    .line 226
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 227
    :goto_1
    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isMmtpSwitchOn Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final isNewDevice()Z
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/a/a;->a()Lcom/alipay/mobile/rome/syncsdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/a/a;->c()Z

    move-result v0

    return v0
.end method

.method public final onLinkOk()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "onLinkOk\uff1a [ longLinkCallback=null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "onLinkOk"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;->onLinkOk()V

    goto :goto_0
.end method

.method public final onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceiveData\uff1a [ longLinkCallback=null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;->onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    goto :goto_0
.end method

.method public final onReceiveData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceiveData\uff1a [ longLinkCallback=null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceiveData\uff1a [appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "][data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;->processPacket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onReceiveData([B)V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceiveData\uff1a [ longLinkCallback=null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onReceiveData[length="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    array-length v0, p1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;->processPacketSync([B)V

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final onReceiveDirectData([B)V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceiverDirectData\uff1a [ longLinkCallback=null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onReceiveDirectData\uff1a [length="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    array-length v0, p1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;->processPacketSyncDirect([B)V

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final processSyncDirectData(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 239
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processSyncDirectData\uff1a [data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v0, "PacketListenerImplNotification2"

    const-string/jumbo v1, "ImplNotification2  processPacket"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;-><init>()V

    const-string/jumbo v2, "linkToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setUserId(Ljava/lang/String;)V

    const-string/jumbo v2, "msgData"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setMsgData(Ljava/lang/String;)V

    const-string/jumbo v2, "msgKey"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setMsgKey(Ljava/lang/String;)V

    const-string/jumbo v2, "msgCreateTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setTimestamp(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setPerMsgId(Ljava/lang/String;)V

    const-string/jumbo v0, "PacketListenerImplNotification2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handlePushMsg:[ msgkey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ msgData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getMsgData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "PacketListenerImplNotification2"

    const-string/jumbo v2, "ImplNotification2  dispatchMsgData"

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/msg/b;

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/msg/a;->a(Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "PacketListenerImplNotification2"

    const-string/jumbo v1, "dispatchMsgData: Duplicated Packet "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/msg/a;->b(Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getMsgData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "payload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v0, "PacketListenerImplNotification2"

    const-string/jumbo v1, "onReceivedPacket: [ appId or appData =null or empty ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "PacketListenerImplNotification2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceivedPacket: [ Exception="

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
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "PacketListenerImplNotification2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket: [ Exception="

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

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->onReceiveData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public final sendPacketUplink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacketUplink\uff1a[ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "][ appData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public final sendPacketUplinkSync([B)V
    .locals 6

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacketUplinkSync\uff1a [ data len="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    const-string/jumbo v1, "com.alipay.mobile.common.transportext.biz.sync.SyncManager"

    .line 112
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 113
    const-string/jumbo v2, "sendData"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [B

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 114
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPacketUplinkSync\uff1a [ TException="

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
