.class public Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;
.super Ljava/lang/Object;
.source "ChatApiFacadempl.java"

# interfaces
.implements Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;


# static fields
.field public static final CHATD_START_MID:I = 0xc350

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private appId:Ljava/lang/String;

.field protected chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

.field private chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    .line 59
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    .line 60
    return-void
.end method

.method private updateSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 4

    .prologue
    .line 482
    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v1

    .line 484
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 485
    if-nez v0, :cond_0

    .line 486
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_0
    iget-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    .line 490
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 492
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_1

    .line 494
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 495
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :cond_1
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessage:  update follow account show summary exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addExtMessage(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)I
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mFrom:Ljava/lang/String;

    .line 508
    const-string/jumbo v0, "y"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isExt:Ljava/lang/String;

    .line 510
    const-string/jumbo v0, "ppchat"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mBox:Ljava/lang/String;

    .line 511
    const-string/jumbo v0, "y"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 512
    const-string/jumbo v0, "sending"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    .line 513
    const-string/jumbo v0, "s"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgDirection:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatGetMaxMid()I

    move-result v0

    if-nez v0, :cond_0

    .line 516
    const v0, 0xc350

    iput v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 519
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addExtMessage:[ msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatInsertMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 523
    if-gez v0, :cond_1

    .line 524
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "addExtMessage:  chatInsertMsg failed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const/4 v0, -0x1

    .line 529
    :goto_0
    return v0

    .line 528
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->updateSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    goto :goto_0
.end method

.method public declared-synchronized addLegacyMessage(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 557
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatGetMinMid()I

    move-result v1

    .line 558
    if-nez v1, :cond_0

    .line 559
    const v1, 0xc34f

    iput v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 568
    :goto_0
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addLegacyMessage:[ msg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatInsertMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 572
    if-gez v1, :cond_2

    .line 573
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "addLegacyMessage:  chatInsertMsg failed"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :goto_1
    monitor-exit p0

    return v0

    .line 560
    :cond_0
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 561
    add-int/lit8 v1, v1, -0x1

    :try_start_1
    iput v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 563
    :cond_1
    :try_start_2
    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addLegacyMessage:  chatInsertMsg failed[ minMid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-static {v2, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 577
    goto :goto_1
.end method

.method public changeExtMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 535
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "changeExtMessage:[ localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 537
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ mData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatUpadateExtMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkFollowInfoExistAndLoad(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 655
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "check follow info exist! userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  publicId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v0

    .line 657
    if-nez v0, :cond_0

    .line 658
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "follow info not exist, start to load ! userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  publicId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->getInstance()Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->recordNoFollowInfoPublicId(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-static {}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->getInstance()Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->loadNoFollowInfoList(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    .line 663
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clearMsgByTargetId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->deleteMsgByTargetId(Ljava/lang/String;)V

    .line 324
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_0

    .line 327
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 328
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 329
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 345
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchClearMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_1

    .line 350
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    :cond_1
    :goto_2
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "update summary "

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 341
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 353
    :catch_1
    move-exception v0

    .line 354
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "clearMsgByTargetId  exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public deleteFollowAcccountShowInfo(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 293
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    const-string/jumbo v1, "PUBLIC"

    iget-object v2, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->deleteFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->userId:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followObjectId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->deleteItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->deleteFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 302
    if-lez v0, :cond_1

    .line 303
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchDeleteShowItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 306
    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->deleteFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 307
    if-lez v0, :cond_1

    .line 308
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchDeleteShowItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessage:  update follow account show summary exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteMsg(I)V
    .locals 4

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)I

    .line 367
    if-nez v0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_0

    .line 375
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->getLastSummeryForTarget(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    if-nez v2, :cond_3

    .line 378
    :cond_2
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    iput v0, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 380
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 381
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 391
    :goto_1
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->followObjectId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    .line 393
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 394
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessage:  update follow account show summary exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 383
    :cond_3
    :try_start_1
    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v2}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 384
    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v2, v2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 385
    iget v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->unReadCount:I

    iput v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 386
    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v2, v2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mExt:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 387
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v0}, Lcom/alipay/mobile/publicplatform/relation/RelationUtils;->calculateMsgTime(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    .line 388
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public deleteMsgByBMsgId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 405
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 416
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->deleteMsg(I)V

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteMsgByBMsgId : Integer.valueOf(bMsgId) "

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteMsgByTargetId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method public deleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 283
    if-eqz p2, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteMsgByTargetIdAndExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteMsgByTargetIdWithMBox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public disturbSwitch(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 613
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateDisturb(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 614
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getPpchatDaoInstance()Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;

    move-result-object v1

    .line 615
    if-eqz p1, :cond_1

    const-string/jumbo v0, "ON"

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    .line 614
    invoke-interface {v1, v0, p2, v2}, Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;->updatePubSvcSetPushSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_0

    .line 618
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 619
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V

    .line 626
    :cond_0
    :goto_1
    return-void

    .line 615
    :cond_1
    const-string/jumbo v0, "OFF"
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public feedsMsgCount(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 670
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->feedsMsgCount(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFeedsSummary()Lcom/alipay/mobile/chatsdk/api/TargetSummary;
    .locals 4

    .prologue
    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getLastFeedsSummary(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 607
    :goto_0
    return-object v0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLastFeedsSummary:[ targetId= [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastSummaryForAllTarget()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/TargetSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getLastSummaryForAllTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u67e5\u8be2\u6240\u6709\u516c\u4f17\u53f7\u6700\u65b0\u7684\u6458\u8981\u4fe1\u606f\u53d1\u751f\u5f02\u5e38[ appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 426
    const-string/jumbo v3, " ][ userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]  [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getLastSummeryForTarget(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;
    .locals 4

    .prologue
    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getLastSummeryForTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLastSummeryForTarget: \u67e5\u8be2\u6700\u65b0\u7684\u6458\u8981\u4fe1\u606f\u53d1\u751f\u5f02\u5e38 [ appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]  [ targetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 440
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ targetExtra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 441
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ] [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public markChatListEntryReaded()V
    .locals 3

    .prologue
    .line 707
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;Z)V

    .line 708
    return-void
.end method

.method public markFeedsMessageReaded()V
    .locals 4

    .prologue
    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMarkFeedsMsgReaded(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchFeedsReaded(Ljava/lang/String;)V

    .line 593
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_0
    return-void

    .line 594
    :catch_0
    move-exception v0

    .line 595
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "markFeedsMessageReaded:[ targetId= [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public markLastMessageUnread(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMarkMsgUnread(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 585
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markMsgReaded(I)V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMarkMsgReaded(Ljava/lang/String;Ljava/lang/String;I)I

    .line 215
    return-void
.end method

.method public markMsgReadedByTargetId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 221
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 224
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->markUnReadMsgCount:I

    .line 225
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMarkMsgReadedByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 230
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "markMsgReadedByTargetId:[ targetId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public markMsgUnReadedByTargetId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 242
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->markUnReadMsgCount:I

    .line 245
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 246
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 249
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "markMsgReadedByTargetId:[ targetId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryLocalMsg(Ljava/lang/String;IIIZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryLocalMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5206\u9875\u67e5\u8be2\u672c\u5730\u6d88\u606f\u5f02\u5e38\u3002 mAppId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 182
    const-string/jumbo v3, "] mUserId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryLocalMsg(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryLocalMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5206\u9875\u67e5\u8be2\u672c\u5730\u6d88\u606f\u5f02\u5e38\u3002 mAppId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    const-string/jumbo v3, "] mUserId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryLocalMsgByLastId(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryLocalMsgByLastId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6309\u6700\u540eID\u67e5\u8be2\u672c\u5730\u6d88\u606f\u5f02\u5e38\u3002 mAppId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    const-string/jumbo v3, "] mUserId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryLocalMsgByLocalId(I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 204
    if-nez v0, :cond_0

    .line 205
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6839\u636elocalMsgId\u67e5\u8be2\u6d88\u606f\u5f02\u5e38\u3002 mAppId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 206
    const-string/jumbo v3, "] mUserId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    return-object v0
.end method

.method public queryLocalMsgOffset(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryLocalMsgOffset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5206\u9875\u67e5\u8be2\u672c\u5730\u6d88\u606f\u5f02\u5e38\u3002 mAppId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 166
    const-string/jumbo v3, "] mUserId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized reSendMessage(I)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 114
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reSendMessage:[ localMsgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v1

    .line 118
    if-nez v1, :cond_0

    .line 119
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "reSendMessage:[ chatQueryMessage failed msg=null ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v0

    .line 138
    :goto_0
    monitor-exit p0

    return p1

    .line 123
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    const-string/jumbo v3, "sending"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "reSendMessage:[ status already sending ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    .line 126
    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    .line 131
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    const-string/jumbo v4, "sending"

    .line 130
    invoke-virtual {v0, v2, v3, p1, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgStatusByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mFrom:Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->sendMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetEntryMergeItem()V
    .locals 3

    .prologue
    .line 712
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;Z)V

    .line 713
    return-void
.end method

.method public retryLoadFail()V
    .locals 2

    .prologue
    .line 701
    invoke-static {}, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->getInstance()Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->retry(Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method public declared-synchronized sendExtMessage(I)I
    .locals 4

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendExtMessage:[ localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryExtMessage(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 465
    if-nez v0, :cond_0

    .line 466
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "sendExtMessage:  chatQueryExtMessage failed[ msg=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    const/4 v0, -0x1

    .line 478
    :goto_0
    monitor-exit p0

    return v0

    .line 471
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatClearExtMessageIsExt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 473
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mFrom:Ljava/lang/String;

    .line 476
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->sendMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    const/4 v0, 0x0

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendMessage(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)I
    .locals 4

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mFrom:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "ppchat"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mBox:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "y"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "sending"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "s"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgDirection:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->localTime:Ljava/util/Date;

    .line 84
    iget-wide v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatGetMaxMid()I

    move-result v0

    if-nez v0, :cond_1

    .line 89
    const v0, 0xc350

    iput v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 92
    :cond_1
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendMessage:[ msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatInsertMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 96
    if-gez v0, :cond_2

    .line 97
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendMessage:  chatInsertMsg failed[ msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    const/4 v0, -0x1

    .line 108
    :goto_0
    monitor-exit p0

    return v0

    .line 102
    :cond_2
    :try_start_1
    iput v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 104
    invoke-direct {p0, p1}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->updateSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    .line 106
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->sendMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnChatList(Z)V
    .locals 1

    .prologue
    .line 717
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->setOnChatList(Z)V

    .line 718
    return-void
.end method

.method public top(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 676
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->setTop(Ljava/lang/String;Ljava/lang/String;J)V

    .line 677
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_0

    const-string/jumbo v1, "1"

    iget-object v0, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->vip:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 682
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "FollowAccountBiz"

    const-string/jumbo v3, "cancel top  "

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unTop(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 689
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->calcelTop(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_0

    const-string/jumbo v1, "1"

    iget-object v0, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->vip:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 695
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "FollowAccountBiz"

    const-string/jumbo v3, "cancel top  "

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateLastOperateTime(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 635
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 636
    if-nez v0, :cond_0

    .line 637
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :cond_0
    iput-wide p2, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->lastOperateTime:J

    .line 640
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 642
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 643
    if-eqz v0, :cond_1

    .line 644
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 645
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :cond_1
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    .line 648
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
