.class public Lcom/alipay/mobile/chatsdk/msg/MsgRecv;
.super Ljava/lang/Object;
.source "MsgRecv.java"


# static fields
.field private static volatile instance:Lcom/alipay/mobile/chatsdk/msg/MsgRecv;


# instance fields
.field private final LOGTAG:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgRecv;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->instance:Lcom/alipay/mobile/chatsdk/msg/MsgRecv;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->instance:Lcom/alipay/mobile/chatsdk/msg/MsgRecv;

    .line 50
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->instance:Lcom/alipay/mobile/chatsdk/msg/MsgRecv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processOneMsg(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Z)V
    .locals 5

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsg:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->toId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->st:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recvMsgFromServer[ toId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->toId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ st="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->st:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    new-instance v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-direct {v1}, Lcom/alipay/mobile/chatsdk/api/ChatMessage;-><init>()V

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recvMsg : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->pl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->pl:Ljava/lang/String;

    const-class v2, Lcom/alipay/mobile/chatsdk/api/MessagePayload;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/api/MessagePayload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    iput-boolean p2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->hasMore:Z

    .line 122
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->appId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    .line 123
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->toId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 125
    iget-wide v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mct:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    .line 131
    :goto_1
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->st:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    invoke-virtual {p0, p1, v1, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->processOneMsgSt1(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;Lcom/alipay/mobile/chatsdk/api/MessagePayload;)V

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "recvMsgFromServer:[ parseObject MessagePayload failed ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mct:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    goto :goto_1

    .line 134
    :cond_4
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->st:Ljava/lang/String;

    const-string/jumbo v2, "2"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 136
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->processOneMsgSt2(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    goto :goto_0

    .line 137
    :cond_5
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->st:Ljava/lang/String;

    const-string/jumbo v2, "3"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->processOneMsgSt3(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    goto/16 :goto_0

    .line 140
    :cond_6
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->st:Ljava/lang/String;

    const-string/jumbo v2, "4"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->processOneMsgSt4(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    goto/16 :goto_0
.end method

.method private processOneMsgSt2(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 5

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt2:[ message status # st:2 ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    const-string/jumbo v1, "\\d+\\|\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processOneMsgSt2: [  mId invalid  ][ tunnelMsg.mId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->cancelSendMsg(Ljava/lang/String;)V

    .line 288
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgHelper;->getMsgmIdbyTunnelmId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 291
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    .line 292
    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v1

    .line 291
    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    const-string/jumbo v2, "sending"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt2: [ msg already mark failed or success ] [ msg status do not send ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 301
    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    const-string/jumbo v4, "success"

    .line 300
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgStatusByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 304
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 305
    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mk:Ljava/lang/String;

    .line 304
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgMkByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 308
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->appId:Ljava/lang/String;

    .line 309
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "success"

    .line 308
    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispathMsgStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processOneMsgSt3(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 5

    .prologue
    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt3:[ message status # st:3 ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    const-string/jumbo v1, "\\d+\\|\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processOneMsgSt3: [ mId invalid ][ tunnelMsg.mId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->cancelSendMsg(Ljava/lang/String;)V

    .line 327
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgHelper;->getMsgmIdbyTunnelmId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 330
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    .line 331
    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v1

    .line 330
    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    const-string/jumbo v2, "fail"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt3: [ msg already mark failed ] [ msg status do not send ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 340
    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    const-string/jumbo v4, "sensitive"

    .line 339
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgStatusByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 343
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 344
    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mk:Ljava/lang/String;

    .line 343
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgMkByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 347
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->appId:Ljava/lang/String;

    .line 348
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "sensitive"

    .line 347
    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispathMsgStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processOneMsgSt4(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 5

    .prologue
    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt4:[ message status # st:4 ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    const-string/jumbo v1, "\\d+\\|\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processOneMsgSt4: [ mId invalid ][ tunnelMsg.mId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->cancelSendMsg(Ljava/lang/String;)V

    .line 366
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgHelper;->getMsgmIdbyTunnelmId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 369
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    .line 370
    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v1

    .line 369
    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    const-string/jumbo v2, "fail"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt3: [ msg already mark failed or success or sensitive ] [ msg status do not send ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 379
    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    const-string/jumbo v4, "fail"

    .line 378
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgStatusByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 382
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 383
    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mk:Ljava/lang/String;

    .line 382
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgMkByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 386
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->appId:Ljava/lang/String;

    .line 387
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "fail"

    .line 386
    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispathMsgStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public processOneMsgSt1(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;Lcom/alipay/mobile/chatsdk/api/MessagePayload;)V
    .locals 5

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt1:[ new message # st:1 ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processOneMsgSt1[ msg mk is null ][ mk="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mk:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string/jumbo v0, "r"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgDirection:Ljava/lang/String;

    .line 157
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mFrom:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    .line 158
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->pluginType:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->pluginType:Ljava/lang/String;

    .line 161
    const-string/jumbo v0, "ALIPAY_MSG"

    iget-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const-string/jumbo v0, "2014120100018252"

    iget-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->ext:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->ext:Ljava/lang/String;

    .line 170
    iget-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->ext:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->ext:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "mFrom"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    const-string/jumbo v1, "s"

    iput-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgDirection:Ljava/lang/String;

    .line 176
    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgHelper;->getMsgmIdbyTunnelmId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_2

    .line 183
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    .line 184
    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_2

    iget-wide v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    iget-wide v2, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->bTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt1: [ msg is already in this device ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processOneMsgSt1: [ ext ] [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 196
    :catch_1
    move-exception v0

    .line 197
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processOneMsgSt1: [ JSONException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mk:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mk:Ljava/lang/String;

    .line 203
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->isSc:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isSc:Ljava/lang/String;

    .line 204
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mSum:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    .line 205
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mType:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    .line 206
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mExt:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mExt:Ljava/lang/String;

    .line 207
    iget-wide v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->bTime:J

    iput-wide v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    .line 208
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->bMsgId:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bMsgId:Ljava/lang/String;

    .line 209
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->isP:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isP:Ljava/lang/String;

    .line 210
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mData:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    .line 211
    const-string/jumbo v0, "success"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    .line 212
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mBox:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mBox:Ljava/lang/String;

    .line 215
    const/4 v1, 0x0

    .line 217
    :try_start_3
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 222
    :goto_1
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->acceptMsg:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    const-string/jumbo v2, "sina_news"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, " user set acceptMsg is false ,return,\u76f4\u63a5\u4e22\u5f03\u6d88\u606f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :catch_2
    move-exception v0

    .line 219
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v4, "processOneMsgSt1: [ \u67e5\u8be2\u514d\u6253\u6270\u5f00\u5173\u51fa\u9519 ]"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 227
    :cond_3
    iget-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->pluginType:Ljava/lang/String;

    const-string/jumbo v2, "sina_news"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 228
    iget-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    const-string/jumbo v2, "[video]"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    .line 231
    :cond_4
    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->disturb:Z

    if-nez v0, :cond_a

    .line 232
    const-string/jumbo v0, "y"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 233
    const-string/jumbo v0, "y"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv2:Ljava/lang/String;

    .line 242
    :goto_2
    iget-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/MessageTypes;->isImgMsgType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/MessageTypes;->isTextMsgType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 243
    :cond_5
    const-string/jumbo v0, "single"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv1:Ljava/lang/String;

    .line 244
    const-string/jumbo v0, "single"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSendType:Ljava/lang/String;

    .line 250
    :goto_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->localTime:Ljava/util/Date;

    .line 252
    const-string/jumbo v0, "y"

    iget-object v1, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->readed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 253
    const-string/jumbo v0, "true"

    iget-object v1, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->readed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    :cond_6
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->readed:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 257
    :cond_7
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->isP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->isP:Ljava/lang/String;

    const-string/jumbo v1, "y"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 258
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatGetMaxMid()I

    move-result v0

    if-nez v0, :cond_9

    .line 259
    const v0, 0xc350

    iput v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 262
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatInsertMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v0

    .line 263
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt1:[ \u63a5\u6536\u5230\u7684\u65b0\u6d88\u606f\u5165\u5e93\u5931\u8d25 ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_a
    iget-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isSc:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 235
    const-string/jumbo v0, "y"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 236
    const-string/jumbo v0, "y"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv2:Ljava/lang/String;

    goto/16 :goto_2

    .line 238
    :cond_b
    const-string/jumbo v0, "n"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 239
    const-string/jumbo v0, "n"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv2:Ljava/lang/String;

    goto/16 :goto_2

    .line 246
    :cond_c
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mSendType:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv1:Ljava/lang/String;

    .line 247
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mSendType:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSendType:Ljava/lang/String;

    goto/16 :goto_3

    .line 267
    :cond_d
    long-to-int v0, v0

    iput v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 270
    :cond_e
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispathMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    goto/16 :goto_0
.end method

.method public recvChatMsgFromServer(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 7

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recvChatMsgFromServer:[ syncMessage="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    .line 63
    iget-boolean v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->hasMore:Z

    .line 66
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v1, v0, :cond_0

    .line 93
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_1
    return-void

    .line 70
    :cond_0
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-class v4, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;

    .line 75
    iget-object v4, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->toId:Ljava/lang/String;

    .line 76
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 77
    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->processOneMsg(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Z)V

    .line 68
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 79
    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->processOneMsg(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    :try_start_2
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "recvMsgFromServer[ parseObject TunnelMessageDown failed ][ Excetion="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " ]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v4, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 87
    :catch_1
    move-exception v0

    .line 88
    :try_start_3
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recvMsgFromServer[ parseObject TunnelMessageDown failed ][ Excetion="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    .line 93
    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    throw v0
.end method
