.class public Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;
.super Ljava/lang/Object;
.source "RecommendationFriendDaoOp.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;


# static fields
.field public static final ENTRY_DESC:Ljava/lang/String; = "entryDesc"

.field public static final ENTRY_RED_POINT:Ljava/lang/String; = "entryRedPoint"

.field public static final ENTRY_UNREAD:Ljava/lang/String; = "entryUnread"


# instance fields
.field private final a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private final e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 58
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    const-string/jumbo v2, "recommendation_friend"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    const-string/jumbo v2, "new_friend"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    .line 63
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 64
    const-class v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 65
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->i:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 67
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 68
    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->new_friend:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->f:Ljava/lang/String;

    .line 69
    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->recommend_tip:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->g:Ljava/lang/String;

    .line 70
    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->new_friend_request:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->h:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "RecommendationFriendDaoOp\u521b\u5efa"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private static a(Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 511
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "sendNewFriendNotification:\u901a\u77e5\u5165\u53e3\u66f4\u65b0"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 512
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 514
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->convertFriendSessionToNotification(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)Landroid/os/Bundle;

    move-result-object v6

    .line 515
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "socialEntry"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 517
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 519
    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "new_friend"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 520
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;)Lcom/j256/ormlite/dao/Dao;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public static convertFriendSessionToNotification(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 523
    const-string/jumbo v2, "point"

    .line 524
    const/4 v1, 0x0

    .line 525
    const-string/jumbo v0, ""

    .line 526
    if-eqz p0, :cond_1

    .line 527
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->redPointStyle:Ljava/lang/String;

    .line 528
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    div-int/lit8 v0, v0, 0x2

    .line 529
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;

    .line 530
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "convertNewFriend:\u5165\u53e3"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 531
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 530
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    .line 535
    :goto_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 536
    const-string/jumbo v4, "entryRedPoint"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string/jumbo v2, "entryUnread"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 538
    const-string/jumbo v1, "entryDesc"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-object v3

    .line 528
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    goto :goto_0

    .line 533
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "SocialSdk_Sdk"

    const-string/jumbo v5, "convertNewFriend:\u65e0\u5165\u53e3\u6570\u636e"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getLastBizMemoForNewFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 543
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 545
    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->new_friend_request:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    .line 550
    :cond_0
    const-string/jumbo v1, "req"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_1
    const-string/jumbo v1, "msg"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 555
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public checkIsGood()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createOrUpdateRecentFriend(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V
    .locals 3

    .prologue
    .line 356
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 356
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-static {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->a(Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    .line 363
    :goto_0
    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteFriendAndUpdateRecent(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 366
    .line 367
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "deleteFriendAndUpdateRecent:\u63a8\u8350\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :goto_0
    return v0

    .line 372
    :cond_0
    :try_start_0
    const-class v3, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    monitor-enter v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 373
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 372
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 375
    :try_start_3
    const-string/jumbo v0, "-2"

    .line 376
    const-string/jumbo v1, "3"

    .line 375
    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v3}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 378
    if-eqz v0, :cond_4

    .line 379
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string/jumbo v4, "time"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    .line 380
    const-class v4, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    monitor-enter v4
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 381
    if-nez v1, :cond_2

    .line 382
    :try_start_4
    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v3}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I

    .line 380
    :goto_1
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 401
    :try_start_5
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-static {v3, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->a(Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    move v0, v2

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v1

    move v2, v0

    move-object v0, v1

    :goto_2
    monitor-exit v3

    throw v0
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    .line 403
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 404
    :goto_3
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 384
    :cond_2
    :try_start_6
    iget-wide v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->time:J

    iput-wide v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    .line 385
    iget-wide v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    iput-wide v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->operationLocalId:J

    .line 386
    iget v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->requestType:I

    packed-switch v3, :pswitch_data_0

    .line 398
    :cond_3
    :goto_4
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 380
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v4

    throw v0
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_0

    .line 388
    :pswitch_0
    :try_start_8
    iget-object v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->action:Ljava/lang/String;

    .line 389
    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->getLatestMarkMsg()Ljava/lang/String;

    move-result-object v6

    .line 388
    invoke-static {v3, v5, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->getLastBizMemoForNewFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;

    .line 390
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->h:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;

    goto :goto_4

    .line 395
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->g:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 403
    :catch_1
    move-exception v1

    goto :goto_3

    .line 372
    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRecommendationFriendById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 88
    :goto_0
    return-object v0

    .line 84
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 88
    goto :goto_0
.end method

.method public getRecommendationFriendUnRead()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 123
    :goto_0
    return-object v0

    .line 111
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "read"

    .line 114
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 113
    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 119
    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    .line 117
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 123
    goto :goto_0
.end method

.method public isNeedUpdate(Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 92
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->userId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->getRecommendationFriendById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    move-result-object v1

    .line 97
    iget v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->requestType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->requestType:I

    if-ne v1, v0, :cond_0

    .line 99
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadRecommendationList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v4, "loadRecommendationList:\u63a8\u8350\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 267
    :goto_0
    return-object v1

    .line 238
    :cond_0
    const/4 v2, 0x0

    .line 240
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 241
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string/jumbo v4, "time"

    .line 242
    const/4 v6, 0x0

    .line 241
    invoke-virtual {v1, v4, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    .line 243
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v1}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 244
    :try_start_1
    invoke-interface {v4}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 249
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->queryExistingAccounts(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v5

    .line 250
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    :goto_3
    move-object v1, v3

    .line 267
    goto :goto_0

    .line 244
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    .line 245
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->userId:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 262
    :catch_0
    move-exception v1

    move-object v2, v4

    .line 263
    :goto_4
    :try_start_3
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v5, "SocialSdk_Sdk"

    invoke-interface {v4, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 265
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_3

    .line 250
    :cond_2
    :try_start_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    move-object v2, v0

    .line 251
    iget-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->userId:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    iget-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->userId:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 253
    iget v7, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->friendStatus:I

    iput v7, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->friendStatus:I

    .line 254
    iget-object v7, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    iput-object v7, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->name:Ljava/lang/String;

    .line 255
    iget-object v7, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    iput-object v7, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->nickName:Ljava/lang/String;

    .line 256
    iget-object v7, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    iput-object v7, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->remarkName:Ljava/lang/String;

    .line 257
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->displayName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 264
    :catchall_0
    move-exception v1

    .line 265
    :goto_5
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 266
    throw v1

    .line 259
    :cond_3
    const/4 v1, 0x0

    :try_start_5
    iput v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->friendStatus:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 264
    :catchall_1
    move-exception v1

    move-object v4, v2

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v4, v2

    goto :goto_5

    .line 262
    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method public markAllRead()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "markAllRead:\u63a8\u8350\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void

    .line 276
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 278
    const-string/jumbo v2, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 279
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 276
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public markRead(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "markRead:\u63a8\u8350\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :goto_0
    return-void

    .line 295
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/data/p;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/p;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 295
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recommendation_friend"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public markSessionRead()V
    .locals 3

    .prologue
    .line 340
    const-string/jumbo v0, "-2"

    .line 341
    const-string/jumbo v1, "3"

    .line 340
    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 344
    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 347
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    .line 348
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->createOrUpdateRecentFriend(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public markTouch(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "markCreator:\u63a8\u8350\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_0
    return-void

    .line 320
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/data/q;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/q;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 320
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recommendation_friend"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public queryFriendEntryInfo()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "queryFriendEntryInfo:\u67e5\u8be2\u5165\u53e3\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string/jumbo v0, "-2"

    const-string/jumbo v1, "3"

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 492
    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->convertFriendSessionToNotification(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendFriendEntryInfo()V
    .locals 3

    .prologue
    .line 501
    :try_start_0
    const-string/jumbo v0, "-2"

    const-string/jumbo v1, "3"

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 503
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-static {v1, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->a(Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updataRecommendationFriend(Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;Z)V
    .locals 7

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 135
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updataRecommendationFriend:friend.mark: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->mark:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 137
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    if-eqz p2, :cond_2

    .line 142
    :try_start_2
    const-string/jumbo v0, "-2"

    .line 143
    const-string/jumbo v1, "3"

    .line 142
    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 146
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 148
    const-class v3, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 149
    if-nez v0, :cond_1

    .line 150
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;-><init>()V

    .line 151
    const/4 v3, -0x2

    iput v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    .line 152
    const-string/jumbo v3, "3"

    iput-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    .line 153
    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    .line 154
    const-string/jumbo v2, "\u65b0\u7684\u670b\u53cb"

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->displayName:Ljava/lang/String;

    .line 155
    sget-object v2, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->redPointStyle:Ljava/lang/String;

    .line 156
    const/4 v2, 0x0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    .line 158
    :cond_1
    iget-wide v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->time:J

    iput-wide v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    .line 159
    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->generateMessageIncrementalId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastLocalId:J

    .line 160
    iget-wide v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    iput-wide v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->operationLocalId:J

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6211: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->getLatestMarkMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;

    .line 162
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->createOrUpdateRecentFriend(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recommendation_friend"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 137
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public updataRecommendationFriend(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 180
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 183
    const-string/jumbo v2, "friendStatus"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 184
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    move-result v0

    .line 185
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updataRecommendationFriend:\u66f4\u65b0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u7ed3\u679c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recommendation_friend"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public updateRecentForNewFriend(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 412
    :try_start_0
    const-string/jumbo v0, "-2"

    const-string/jumbo v1, "3"

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v8}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 414
    const/4 v3, 0x0

    .line 415
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    .line 419
    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->getRecommendationFriendUnRead()Ljava/util/List;

    move-result-object v1

    .line 421
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v2

    move v7, v2

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 434
    if-nez v3, :cond_8

    .line 435
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    move-object v5, v1

    .line 438
    :goto_1
    if-nez v0, :cond_7

    .line 439
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;-><init>()V

    .line 440
    const/4 v1, -0x2

    iput v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    .line 441
    const-string/jumbo v1, "3"

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    .line 442
    iput-object v8, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    .line 443
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->displayName:Ljava/lang/String;

    .line 444
    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->redPointStyle:Ljava/lang/String;

    .line 445
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    move v3, v2

    move-object v2, v0

    .line 449
    :goto_2
    if-lez v7, :cond_3

    .line 450
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    move-object v1, v2

    .line 454
    :goto_3
    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->redPointStyle:Ljava/lang/String;

    .line 457
    mul-int/lit8 v0, v7, 0x2

    iput v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    .line 458
    iget-wide v0, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->time:J

    iput-wide v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    .line 459
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->i:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->generateMessageIncrementalId()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastLocalId:J

    .line 460
    iget-wide v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    iput-wide v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->operationLocalId:J

    .line 461
    iget v0, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->requestType:I

    packed-switch v0, :pswitch_data_0

    .line 473
    :goto_4
    const/4 v0, 0x1

    iput v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSide:I

    .line 474
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    if-eqz v3, :cond_5

    .line 476
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 474
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->a(Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    .line 485
    :goto_6
    return-void

    .line 421
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    .line 422
    iget v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->requestType:I

    if-ne v5, v4, :cond_2

    .line 423
    add-int/lit8 v5, v7, 0x1

    .line 424
    iget-boolean v7, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->read:Z

    if-nez v7, :cond_9

    move v7, v5

    move-object v3, v1

    .line 426
    goto :goto_0

    .line 428
    :cond_2
    iget v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->requestType:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    move v6, v4

    .line 429
    goto :goto_0

    .line 451
    :cond_3
    if-eqz v6, :cond_4

    move-object v1, v2

    .line 454
    :goto_7
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget v0, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->requestType:I

    if-ne v0, v4, :cond_6

    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    move-object v1, v2

    goto :goto_3

    .line 463
    :pswitch_0
    iget-object v0, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->action:Ljava/lang/String;

    .line 464
    invoke-virtual {v5}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->getLatestMarkMsg()Ljava/lang/String;

    move-result-object v4

    .line 463
    invoke-static {v0, v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->getLastBizMemoForNewFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 482
    :catch_0
    move-exception v0

    .line 483
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 469
    :pswitch_1
    const/4 v0, 0x1

    :try_start_3
    iput v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 478
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 474
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_6
    move-object v1, v2

    goto :goto_7

    :cond_7
    move v3, v4

    move-object v2, v0

    goto/16 :goto_2

    :cond_8
    move-object v5, v3

    goto/16 :goto_1

    :cond_9
    move v7, v5

    goto/16 :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateRecommendationList(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "updateRecommendationList:\u7a7a\u5217\u8868"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 228
    :goto_0
    return v0

    .line 205
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/data/o;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/o;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 205
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recommendation_friend"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    move v0, v7

    .line 225
    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v8

    .line 228
    goto :goto_0
.end method
