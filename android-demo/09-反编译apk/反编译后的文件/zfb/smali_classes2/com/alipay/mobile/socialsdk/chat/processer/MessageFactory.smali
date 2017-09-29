.class public Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# static fields
.field public static final TEMPLATE_CODE_BIG_VIDEO:I = 0x14

.field public static final TEMPLATE_CODE_BIG_VIDEO_FIRE:I = 0x334

.field public static final TEMPLATE_CODE_BUSINESS_CARD_105:I = 0x69

.field public static final TEMPLATE_CODE_EMOTION:I = 0xd

.field public static final TEMPLATE_CODE_FUND:I = 0x7a

.field public static final TEMPLATE_CODE_IMAGE:I = 0xe

.field public static final TEMPLATE_CODE_IMAGE_FIRE:I = 0x32e

.field public static final TEMPLATE_CODE_NAME_CARD:I = 0x11

.field public static final TEMPLATE_CODE_SHARE_MAP:I = 0x10

.field public static final TEMPLATE_CODE_SHOP_REMARK:I = 0x6e

.field public static final TEMPLATE_CODE_SMALL_VIDEO_FIRE:I = 0x333

.field public static final TEMPLATE_CODE_STOCK:I = 0x78

.field public static final TEMPLATE_CODE_TAOBAO_GOODS:I = 0x79

.field public static final TEMPLATE_CODE_TEXT:I = 0xb

.field public static final TEMPLATE_CODE_TEXT_FIRE:I = 0x32b

.field public static final TEMPLATE_CODE_VIDEO:I = 0x13

.field public static final TEMPLATE_CODE_VOICE:I = 0xc

.field public static final TEMPLATE_CODE_VOICE_FIRE:I = 0x32c

.field public static final TEMPLATE_CODE_WEB_PAGE:I = 0x3e9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 4

    .prologue
    .line 332
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v1

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->extendData:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->extendData:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->appId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->appId:Ljava/lang/String;

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->createTime:J

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 341
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->action:I

    iput v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->action:I

    .line 342
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->isResourceUploaded:Z

    iput-boolean v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->isResourceUploaded:Z

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->link:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->link:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizRemind:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizRemind:Ljava/lang/String;

    .line 345
    const-string/jumbo v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 346
    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    check-cast p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->hintUsers:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->hintUsers:Ljava/lang/String;

    .line 348
    :cond_0
    return-object v1
.end method

.method private static declared-synchronized a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 621
    const-class v4, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v4

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->sendingState:I

    .line 623
    const/4 v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    .line 624
    const-string/jumbo v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 626
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 627
    invoke-virtual {v1, p0, p3}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->saveSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Z)Z

    move-result v1

    .line 628
    if-nez v1, :cond_0

    .line 629
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u6d88\u606f\u63d2\u5165\u4e2a\u4eba\u6570\u636e\u5e93\u5931\u8d25 : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v3

    .line 650
    :goto_0
    monitor-exit v4

    return-object p0

    .line 632
    :cond_0
    :try_start_1
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 633
    invoke-virtual {v1, p2, p1, p0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    .line 635
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u6d88\u606f\u63d2\u5165\u4e2a\u4eba\u6570\u636e\u5e93\u6210\u529f : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_1
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->addToMessageQueue(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 637
    :cond_2
    :try_start_2
    const-string/jumbo v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 639
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    move-object v2, v0

    invoke-virtual {v1, v2, p3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->saveSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z

    move-result v1

    .line 640
    if-nez v1, :cond_3

    .line 641
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u6d88\u606f\u63d2\u5165\u7fa4\u6570\u636e\u5e93\u5931\u8d25 : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v3

    .line 642
    goto :goto_0

    .line 644
    :cond_3
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 645
    invoke-virtual {v1, p2, p1, p0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    .line 647
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u6d88\u606f\u63d2\u5165\u7fa4\u6570\u636e\u5e93\u6210\u529f : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected static a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 3

    .prologue
    .line 312
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;-><init>()V

    .line 317
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->recent:Z

    .line 318
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getIncrementalMessageId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->localId:J

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->createTime:J

    .line 320
    return-object v0

    .line 315
    :cond_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;-><init>()V

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/NameCardMediaInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/NameCardMediaInfo;

    .line 293
    const-string/jumbo v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    .line 295
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->queryGroupById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    move-result-object v1

    .line 296
    const-string/jumbo v2, "\u4f60\u5411%s\u63a8\u8350\u4e86%s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/NameCardMediaInfo;->getN()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    goto :goto_0

    .line 297
    :cond_2
    const-string/jumbo v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 299
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v1

    .line 300
    const-string/jumbo v2, "\u4f60\u5411%s\u63a8\u8350\u4e86%s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/NameCardMediaInfo;->getN()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    goto :goto_0
.end method

.method public static addMessage(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->insertBatchMessage(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static addToMessageQueue(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 685
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v1, "LINK_SOCIAL"

    const-string/jumbo v2, "PHASE_SOCIAL_SEND"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 722
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->add(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)V

    .line 725
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    .line 726
    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->recordUploadMsg(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Z

    .line 727
    return-void

    .line 691
    :sswitch_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/TextRequest;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/TextRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :sswitch_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ImageRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    move-result-object v1

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->addUploadId(Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :sswitch_2
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/VoiceRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :sswitch_3
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/EmotionRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :sswitch_4
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/VideoRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    move-result-object v1

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->addUploadId(Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :sswitch_5
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BigVideoRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    move-result-object v1

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->addUploadId(Ljava/lang/String;)V

    goto :goto_0

    .line 716
    :sswitch_6
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :sswitch_7
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/request/ShareMapRequest;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/ShareMapRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 688
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0xe -> :sswitch_1
        0x10 -> :sswitch_7
        0x11 -> :sswitch_6
        0x13 -> :sswitch_4
        0x14 -> :sswitch_5
        0x32b -> :sswitch_0
        0x32c -> :sswitch_2
        0x32e -> :sswitch_1
        0x333 -> :sswitch_4
        0x334 -> :sswitch_5
    .end sparse-switch
.end method

.method private static declared-synchronized b(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 2

    .prologue
    .line 608
    const-class v0, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    invoke-static {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 734
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    const/4 v0, 0x0

    .line 737
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\"msgIndex\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized cancelMsg(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 270
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->cancel(Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->sendingState:I

    .line 272
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 274
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 275
    :cond_1
    :try_start_1
    const-string/jumbo v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 277
    check-cast p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static createClientMsgId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCommonMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 5

    .prologue
    .line 417
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v0

    .line 418
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 419
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u521b\u5efaCommonMessage: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string/jumbo v1, "CHAT"

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 421
    iput-object p4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 422
    iput-object p2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 423
    invoke-static {p3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 424
    iput-object p5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->link:Ljava/lang/String;

    .line 425
    invoke-static {v0, p1, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->b(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized createEmotionMsg(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 6

    .prologue
    .line 90
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u521b\u5efaEmotion\u6d88\u606f "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "CHAT"

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 94
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const-string/jumbo p3, "\u52a8\u753b\u8868\u60c5"

    .line 97
    :cond_0
    const-string/jumbo v2, "[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 98
    const-string/jumbo v2, "13"

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 99
    invoke-static {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 100
    invoke-static {v0, p1, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->b(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized createImageMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 2

    .prologue
    .line 141
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v1

    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->getImageMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v0

    .line 142
    invoke-static {v0, p1, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->b(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized createImageMsgList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    const-class v2, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v3, "\u6279\u91cf\u53d1\u9001\u56fe\u7247\u6d88\u606f "

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    invoke-static {v3, p1, p0, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->insertBatchMessage(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit v2

    return-object v3

    .line 184
    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;

    .line 185
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v5

    .line 186
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 187
    const-string/jumbo v1, "CHAT"

    iput-object v1, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 188
    if-eqz p3, :cond_1

    const-string/jumbo v1, "\u4f60\u53d1\u9001\u4e86\u4e00\u6761\u6084\u6084\u8bdd"

    :goto_1
    iput-object v1, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 189
    if-eqz p3, :cond_2

    const/16 v1, 0x32e

    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 190
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 191
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 188
    :cond_1
    :try_start_2
    const-string/jumbo v1, "[\u56fe\u7247]"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 189
    :cond_2
    const/16 v1, 0xe

    goto :goto_2
.end method

.method public static createLocalMessage(Lcom/alipay/mobile/personalbase/model/LocalTempMessage;)V
    .locals 5

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/model/LocalTempMessage;->getTemplateData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    :goto_0
    return-void

    .line 744
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/model/LocalTempMessage;->getTargetUserType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v0

    .line 745
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/model/LocalTempMessage;->getClientMsgId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 746
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u521b\u5efaCommonMessage: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string/jumbo v1, "CHAT"

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 748
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/model/LocalTempMessage;->getBizMemo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 749
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/model/LocalTempMessage;->getTemplateCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 750
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/model/LocalTempMessage;->getTemplateData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 751
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/model/LocalTempMessage;->getLink()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->link:Ljava/lang/String;

    .line 752
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/model/LocalTempMessage;->getBizRemind()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizRemind:Ljava/lang/String;

    .line 753
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->sendingState:I

    .line 754
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/model/LocalTempMessage;->getBizType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 756
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/model/LocalTempMessage;->getTargetUserType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/model/LocalTempMessage;->getTargetUserId()Ljava/lang/String;

    move-result-object v2

    .line 757
    const/4 v3, 0x1

    .line 756
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadMessageUtils;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    goto :goto_0
.end method

.method public static declared-synchronized createMapMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 6

    .prologue
    .line 236
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v0

    .line 237
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 238
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u521b\u5efa\u4f4d\u7f6e\u6d88\u606f: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v2, "CHAT"

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 240
    const-string/jumbo v2, "[\u4f4d\u7f6e]"

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 241
    iput-object p4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->link:Ljava/lang/String;

    .line 242
    const-string/jumbo v2, "16"

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 243
    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/model/media/LBSCardMediaInfo;

    invoke-direct {v2, p2, p3}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/LBSCardMediaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 245
    invoke-static {v0, p1, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->b(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized createTextMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 7

    .prologue
    .line 64
    const-class v3, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v3

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v2

    .line 65
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u521b\u5efa\u6587\u672c\u6d88\u606f: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v1, "CHAT"

    iput-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 69
    if-eqz p5, :cond_1

    const-string/jumbo v1, "\u4f60\u53d1\u9001\u4e86\u4e00\u6761\u6084\u6084\u8bdd"

    :goto_0
    iput-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 70
    if-eqz p5, :cond_2

    const/16 v1, 0x32b

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 71
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TextMediaInfo;

    invoke-direct {v1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TextMediaInfo;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 73
    const-string/jumbo v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    move-object v1, v0

    iput-object p4, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->hintUsers:Ljava/lang/String;

    .line 76
    :cond_0
    invoke-static {v2, p1, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->b(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v3

    return-object v1

    :cond_1
    move-object v1, p2

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/16 v1, 0xb

    goto :goto_1

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method public static declared-synchronized createVideoMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 8

    .prologue
    .line 212
    const-class v6, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v6

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v7

    .line 213
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 214
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "createMessage succeed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string/jumbo v0, "CHAT"

    iput-object v0, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 216
    if-eqz p7, :cond_0

    const-string/jumbo v0, "\u4f60\u53d1\u9001\u4e86\u4e00\u6761\u6084\u6084\u8bdd"

    :goto_0
    iput-object v0, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 217
    if-eqz p7, :cond_1

    const/16 v0, 0x333

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 218
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 219
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 220
    invoke-static {v7, p1, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->b(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v6

    return-object v0

    .line 216
    :cond_0
    :try_start_1
    const-string/jumbo v0, "[\u5c0f\u89c6\u9891]"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :cond_1
    const/16 v0, 0x13

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized createVoiceMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 6

    .prologue
    .line 115
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v2

    .line 116
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u521b\u5efa\u8bed\u97f3\u6d88\u606f: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v0, "CHAT"

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 120
    if-eqz p4, :cond_0

    const-string/jumbo v0, "\u4f60\u53d1\u9001\u4e86\u4e00\u6761\u6084\u6084\u8bdd"

    :goto_0
    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 121
    if-eqz p4, :cond_1

    const/16 v0, 0x32c

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;

    invoke-direct {v0, p2, p3}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;-><init>(Ljava/lang/String;I)V

    .line 123
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 124
    const/4 v0, 0x1

    iput v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->sendingState:I

    .line 125
    invoke-static {v2, p1, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->b(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 120
    :cond_0
    :try_start_1
    const-string/jumbo v0, "[\u8bed\u97f3]"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :cond_1
    const/16 v0, 0xc

    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized deleteMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 602
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 603
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->deleteMessages(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized deleteMessages(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 598
    const-class v0, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->deleteMessages(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized deleteMessages(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 576
    const-class v5, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    .line 593
    :goto_0
    monitor-exit v5

    return v1

    .line 576
    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    .line 577
    const-string/jumbo v2, "2"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 578
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v2, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 579
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    move-object v3, v0

    invoke-virtual {v2, v3, p3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->deleteMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z

    move-result v2

    .line 584
    :goto_1
    iget v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->sendingState:I

    if-ne v3, v4, :cond_2

    .line 585
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    move-result-object v3

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->cancel(Ljava/lang/String;)V

    .line 586
    :cond_2
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 587
    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    .line 588
    if-nez v2, :cond_0

    .line 589
    const/4 v1, 0x0

    goto :goto_0

    .line 581
    :cond_3
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v2, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 582
    invoke-virtual {v2, v1, p3}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->deleteMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_1

    .line 576
    :catchall_0
    move-exception v1

    monitor-exit v5

    throw v1
.end method

.method public static forwardChatMsgs(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8f6c\u53d1\u521b\u5efa\u6d88\u606f\u6210\u529f\uff0c\u6761\u76ee\u6570:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {v1, p1, p2, v6}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->insertBatchMessage(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 378
    return-object v1

    .line 362
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    .line 363
    invoke-static {v0, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v3

    .line 364
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 365
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getIncrementalMessageId()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->localId:J

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->createTime:J

    .line 367
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->msgIndex:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->extendData:Ljava/lang/String;

    .line 368
    iget v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    if-nez v4, :cond_1

    .line 369
    iput-boolean v6, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->isResourceUploaded:Z

    .line 373
    :goto_1
    iput v6, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->scene:I

    .line 374
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    :cond_1
    iget-boolean v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->isResourceUploaded:Z

    iput-boolean v0, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->isResourceUploaded:Z

    goto :goto_1
.end method

.method public static forwardMessageContent(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/media/ForwardContent;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/l;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method

.method public static declared-synchronized getBigVideoMsg(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/media/VideoMediaInfo;Z)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 6

    .prologue
    .line 166
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v2

    .line 167
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 168
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u521b\u5efa\u5927\u89c6\u9891\u6d88\u606f: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v0, "CHAT"

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 171
    if-eqz p3, :cond_0

    const-string/jumbo v0, "\u4f60\u53d1\u9001\u4e86\u4e00\u6761\u6084\u6084\u8bdd"

    :goto_0
    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 172
    if-eqz p3, :cond_1

    const/16 v0, 0x334

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 173
    invoke-static {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit v1

    return-object v2

    .line 171
    :cond_0
    :try_start_1
    const-string/jumbo v0, "[\u89c6\u9891]"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :cond_1
    const/16 v0, 0x14

    goto :goto_1

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getImageMsg(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;Z)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 6

    .prologue
    .line 153
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v2

    .line 154
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u521b\u5efa\u56fe\u7247\u6d88\u606f: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v0, "CHAT"

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 158
    if-eqz p3, :cond_0

    const-string/jumbo v0, "\u4f60\u53d1\u9001\u4e86\u4e00\u6761\u6084\u6084\u8bdd"

    :goto_0
    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 159
    if-eqz p3, :cond_1

    const/16 v0, 0x32e

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 160
    invoke-static {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit v1

    return-object v2

    .line 158
    :cond_0
    :try_start_1
    const-string/jumbo v0, "[\u56fe\u7247]"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :cond_1
    const/16 v0, 0xe

    goto :goto_1

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getImageMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 3

    .prologue
    .line 147
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;

    invoke-direct {v0, p2, p4, p3, p5}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 148
    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->getImageMsg(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;Z)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static insertBatchMessage(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 655
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 656
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 664
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 665
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 666
    invoke-virtual {v0, p0, p3}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->saveMessages(Ljava/util/List;Z)I

    .line 667
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 668
    invoke-virtual {v0, p2, p1, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    .line 675
    :cond_1
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u6d88\u606f\u53d1\u9001\uff0c\u6279\u91cf\u63d2\u5165\u6570\u636e\u5e93\u6210\u529f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 679
    return-object p0

    .line 656
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    .line 657
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iput v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->sendingState:I

    .line 659
    iput v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    .line 660
    const-string/jumbo v3, "2"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 661
    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 669
    :cond_3
    const-string/jumbo v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 671
    invoke-virtual {v0, v1, p3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->saveMessages(Ljava/util/List;Z)I

    .line 672
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 673
    invoke-virtual {v0, p2, p1, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V

    goto :goto_1

    .line 676
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    .line 677
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->addToMessageQueue(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static declared-synchronized reSendMsg(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 257
    const-class v3, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;

    monitor-enter v3

    .line 258
    :try_start_0
    const-string/jumbo v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v1, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 260
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->deleteMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Z)Z

    move-result v1

    .line 265
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "SocialSdk_Sdk"

    if-eqz v1, :cond_2

    const-string/jumbo v1, "\u91cd\u8bd5\u5220\u9664\u6210\u529f"

    :goto_1
    invoke-interface {v2, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {p0, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v1

    invoke-static {v1, p2, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->b(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v3

    return-object v1

    .line 261
    :cond_1
    :try_start_1
    const-string/jumbo v2, "2"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v1, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 263
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    move-object v2, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->deleteMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z

    move-result v1

    goto :goto_0

    .line 265
    :cond_2
    const-string/jumbo v1, "\u91cd\u8bd5\u5220\u9664\u5931\u8d25......"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method public static shareMessage(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/16 v3, 0x3e9

    const/4 v7, 0x7

    const/4 v8, 0x1

    .line 434
    const/4 v1, 0x0

    .line 435
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getTemplateCode()I

    move-result v0

    .line 436
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v2, v0

    .line 519
    :goto_0
    if-eqz v1, :cond_4

    .line 524
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v0

    .line 525
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 526
    new-instance v4, Lcom/alipay/mobile/socialsdk/bizdata/model/media/AppInfo;

    invoke-direct {v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/AppInfo;-><init>()V

    .line 527
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/AppInfo;->setName(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/AppInfo;->setLogo(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/AppInfo;->setAppId(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;->setAppInfo(Lcom/alipay/mobile/socialsdk/bizdata/model/media/AppInfo;)V

    .line 532
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getType()I

    move-result v4

    if-eq v4, v7, :cond_1

    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 533
    :cond_1
    iput v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->action:I

    .line 534
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 535
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "SocialSdk_Sdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "shareMessage succeed "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string/jumbo v4, "CHAT"

    iput-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 537
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getBizMemo()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 538
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 539
    const/4 v4, 0x2

    iput v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->scene:I

    .line 540
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 541
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->link:Ljava/lang/String;

    .line 542
    if-ne v2, v3, :cond_3

    .line 543
    iput v8, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->action:I

    .line 545
    :cond_3
    invoke-static {v0, p1, p0, v8}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    .line 547
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 548
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createClientMsgId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u521b\u5efa\u5206\u4eab\u7684\u6587\u672c\u6d88\u606f: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CHAT"

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    iput-object p3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    const-string/jumbo v1, "11"

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TextMediaInfo;

    invoke-direct {v1, p3}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TextMediaInfo;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    invoke-static {v0, p1, p0, v8}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    .line 550
    :cond_5
    return-void

    .line 438
    :pswitch_1
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TextMediaInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TextMediaInfo;-><init>()V

    .line 439
    if-nez v0, :cond_6

    const/16 v0, 0xb

    move v2, v0

    :goto_1
    move-object v0, v1

    .line 440
    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TextMediaInfo;

    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TextMediaInfo;->setM(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v2, v0

    .line 439
    goto :goto_1

    .line 443
    :pswitch_2
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;-><init>()V

    .line 444
    if-nez v0, :cond_7

    move v2, v3

    :goto_2
    move-object v0, v1

    .line 445
    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;

    .line 446
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->setTitle(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->setDesc(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->setImage(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->setUi(Lcom/alipay/mobile/personalbase/share/ui/Ui;)V

    goto/16 :goto_0

    :cond_7
    move v2, v0

    .line 444
    goto :goto_2

    .line 452
    :pswitch_3
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;-><init>()V

    .line 453
    if-nez v0, :cond_8

    const/16 v0, 0xe

    move v2, v0

    :goto_3
    move-object v0, v1

    .line 454
    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;

    .line 455
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getBigImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->setI(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->setH(F)V

    .line 457
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->setW(F)V

    goto/16 :goto_0

    :cond_8
    move v2, v0

    .line 453
    goto :goto_3

    .line 461
    :pswitch_4
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TaobaoGoodsMediaInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TaobaoGoodsMediaInfo;-><init>()V

    .line 462
    if-nez v0, :cond_9

    const/16 v0, 0x79

    move v4, v0

    :goto_4
    move-object v0, v1

    .line 463
    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TaobaoGoodsMediaInfo;

    .line 464
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TaobaoGoodsMediaInfo;->setTitle(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TaobaoGoodsMediaInfo;->setImage(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "tag1"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a

    .line 467
    const-string/jumbo v2, ""

    .line 466
    :goto_5
    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TaobaoGoodsMediaInfo;->tag1:Ljava/lang/String;

    .line 469
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "tag2"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b

    .line 470
    const-string/jumbo v2, ""

    .line 469
    :goto_6
    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TaobaoGoodsMediaInfo;->tag2:Ljava/lang/String;

    .line 472
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "price"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    .line 473
    const-string/jumbo v2, ""

    .line 472
    :goto_7
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TaobaoGoodsMediaInfo;->setPrice(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "originPrice"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    .line 476
    const-string/jumbo v2, ""

    .line 475
    :goto_8
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TaobaoGoodsMediaInfo;->setOriginPrice(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TaobaoGoodsMediaInfo;->setUi(Lcom/alipay/mobile/personalbase/share/ui/Ui;)V

    move v2, v4

    .line 479
    goto/16 :goto_0

    :cond_9
    move v4, v0

    .line 462
    goto :goto_4

    .line 468
    :cond_a
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "tag1"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_5

    .line 471
    :cond_b
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "tag2"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_6

    .line 474
    :cond_c
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "price"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_7

    .line 477
    :cond_d
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "originPrice"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_8

    .line 481
    :pswitch_5
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;-><init>()V

    .line 482
    if-nez v0, :cond_e

    const/16 v0, 0x78

    move v4, v0

    :goto_9
    move-object v0, v1

    .line 483
    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;

    .line 484
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->setImage(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "stockName"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    const-string/jumbo v2, ""

    :goto_a
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->setName(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "stockCode"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_10

    const-string/jumbo v2, ""

    :goto_b
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->setCode(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "stockPrice"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_11

    const-string/jumbo v2, ""

    :goto_c
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->setPrice(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "stockPriceChange"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_12

    const-string/jumbo v2, ""

    :goto_d
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->setChange(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "stockPriceChangeRatio"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_13

    const-string/jumbo v2, ""

    :goto_e
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->setPercent(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "time"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->setTime(J)V

    .line 491
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "status"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/StockMediaInfo;->setStatus(I)V

    move v2, v4

    .line 492
    goto/16 :goto_0

    :cond_e
    move v4, v0

    .line 482
    goto/16 :goto_9

    .line 485
    :cond_f
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "stockName"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_a

    .line 486
    :cond_10
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "stockCode"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_b

    .line 487
    :cond_11
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "stockPrice"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_c

    .line 488
    :cond_12
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "stockPriceChange"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_d

    .line 489
    :cond_13
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "stockPriceChangeRatio"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_e

    .line 494
    :pswitch_6
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/FundMediaInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/FundMediaInfo;-><init>()V

    .line 495
    if-nez v0, :cond_14

    const/16 v0, 0x7a

    move v4, v0

    :goto_f
    move-object v0, v1

    .line 496
    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/FundMediaInfo;

    .line 497
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/FundMediaInfo;->setImage(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "tag"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15

    const-string/jumbo v2, ""

    :goto_10
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/FundMediaInfo;->setTag(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "fundName"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_16

    const-string/jumbo v2, ""

    :goto_11
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/FundMediaInfo;->setTitle(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "code"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_17

    const-string/jumbo v2, ""

    :goto_12
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/FundMediaInfo;->setCode(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "price"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18

    const-string/jumbo v2, ""

    :goto_13
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/FundMediaInfo;->setPrice(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "time"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/FundMediaInfo;->setTime(J)V

    .line 503
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "tip1"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    const-string/jumbo v2, ""

    :goto_14
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/FundMediaInfo;->setTip1(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "tip2"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1a

    const-string/jumbo v2, ""

    :goto_15
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/FundMediaInfo;->setTip2(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "dayIncrease"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1b

    const-string/jumbo v2, ""

    :goto_16
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/FundMediaInfo;->setDayIncrease(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "weekIncrease"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1c

    const-string/jumbo v2, ""

    :goto_17
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/FundMediaInfo;->setWeekIncrease(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/FundMediaInfo;->setUi(Lcom/alipay/mobile/personalbase/share/ui/Ui;)V

    move v2, v4

    .line 509
    goto/16 :goto_0

    :cond_14
    move v4, v0

    .line 495
    goto/16 :goto_f

    .line 498
    :cond_15
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "tag"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_10

    .line 499
    :cond_16
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "fundName"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_11

    .line 500
    :cond_17
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "code"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_12

    .line 501
    :cond_18
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "price"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_13

    .line 503
    :cond_19
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "tip1"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_14

    .line 504
    :cond_1a
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "tip2"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_15

    .line 505
    :cond_1b
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "dayIncrease"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_16

    .line 506
    :cond_1c
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v5, "weekIncrease"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_17

    .line 511
    :pswitch_7
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ShopRemarkInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ShopRemarkInfo;-><init>()V

    .line 512
    if-nez v0, :cond_1d

    const/16 v0, 0x6e

    move v2, v0

    :goto_18
    move-object v0, v1

    .line 513
    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ShopRemarkInfo;

    .line 514
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ShopRemarkInfo;->setBizImage(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ShopRemarkInfo;->setTitle(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getSubTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ShopRemarkInfo;->setMidTitle(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ShopRemarkInfo;->setM(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ShopRemarkInfo;->setScore(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    move v2, v0

    .line 512
    goto :goto_18

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
