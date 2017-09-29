.class public Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;
.super Ljava/lang/Object;
.source "ContactDataManager.java"


# static fields
.field public static final MOBILE_MAGIC_CODE_TAG:Ljava/lang/String; = "mobile_code_tag"

.field public static NOW_MOBILE_CODE:Ljava/lang/String;

.field private static a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

.field private static synthetic n:[I


# instance fields
.field private final b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

.field private final c:Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;

.field private final d:Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;

.field private final e:Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

.field private final f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

.field private final g:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

.field private final h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private final i:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

.field private final j:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field public mCurrentUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->NOW_MOBILE_CODE:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->k:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->l:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->initInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    .line 71
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->initInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    .line 72
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDbUpgrader;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDbUpgrader;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDbUpgrader;->upgradeDatabaseManually()V

    .line 74
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;-><init>(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->c:Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;

    .line 75
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 76
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->d:Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;

    .line 77
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->e:Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    .line 78
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 79
    const-class v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 80
    const-class v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->j:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->i:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->m:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u751f\u6210ContactDataManager"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->sendFriendEntryNotification()V

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;)Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->d:Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;

    return-object v0
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->n:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;->values()[Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;->CONTACT_INCR:Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    invoke-virtual {v1}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;->UPDATE_BINDINFO:Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    invoke-virtual {v1}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->n:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;)Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->e:Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;
    .locals 2

    .prologue
    .line 89
    const-class v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getMobileMagicCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 546
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->NOW_MOBILE_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 547
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->NOW_MOBILE_CODE:Ljava/lang/String;

    .line 557
    :goto_0
    return-object v0

    .line 549
    :cond_0
    const-string/jumbo v0, "mobile_code_tag"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->NOW_MOBILE_CODE:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 551
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->NOW_MOBILE_CODE:Ljava/lang/String;

    goto :goto_0

    .line 553
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->NOW_MOBILE_CODE:Ljava/lang/String;

    .line 555
    const-string/jumbo v0, "mobile_code_tag"

    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->NOW_MOBILE_CODE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u751f\u6210\u901a\u8baf\u5f55\u79cd\u5b50"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->NOW_MOBILE_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->NOW_MOBILE_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized refreshInstance(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 4

    .prologue
    .line 93
    const-class v1, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->releaseInstance()V

    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->releaseInstance()V

    .line 96
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;-><init>(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    .line 97
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "\u91cd\u65b0\u751f\u6210ContactDataManager"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 100
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;-><init>(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkAndLoadGroupProfile(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->d:Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->queryAndLoadGroupProfile(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isAllMobileListLoaded()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->e:Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->isMobileListAllLoaded()Z

    move-result v0

    return v0
.end method

.method public isFriendDataLoaded()Z
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->c:Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->getLocalFriendDataVersion()[J

    move-result-object v0

    .line 106
    const/4 v1, 0x2

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileListLoaded()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->e:Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->isMobileFirstLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->e:Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->isMobileListAllLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public markFriendOrGroupTop(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    packed-switch p1, :pswitch_data_0

    .line 527
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 523
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->c:Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;

    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->markPersonTop(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 525
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->d:Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;

    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->markGroupTop(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public queryAndLoadAccountBriefForTl(Ljava/util/List;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->c:Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->queryAndLoadStrangerProfile(Ljava/util/List;Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public queryAndLoadGroupProfile(Ljava/util/List;Z)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    .line 512
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->queryExistingGroups(Ljava/util/List;Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public queryAndLoadStrangerProfile(Ljava/util/List;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->c:Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->queryAndLoadStrangerProfile(Ljava/util/List;Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public responseFriendSyncCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCmdReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseFriendSyncCommand:\u62a5\u544async\u6536\u5230\u547d\u4ee4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseFriendSyncCommand:\u91cd\u590d\u547d\u4ee4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->i:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    const-string/jumbo v4, "pullall"

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 190
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->k:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->c:Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->tryToRefreshData(ZZ)V

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCommandHandled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseFriendSyncCommand:\u62a5\u544async\u5904\u7406\u547d\u4ee4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public responseFriendSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 23

    .prologue
    .line 197
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    const-string/jumbo v4, "responseFriendSyncMessage:\u63a5\u6536sync\u6d88\u606f\u9519\u8bef"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 202
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->i:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    const-string/jumbo v6, "receive"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 203
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v18

    .line 204
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v19

    .line 205
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    const-wide/16 v13, -0x1

    .line 207
    const-wide/16 v15, -0x1

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->c:Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;

    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->getLocalFriendDataVersion()[J

    move-result-object v2

    .line 209
    const/4 v3, 0x0

    aget-wide v11, v2, v3

    .line 210
    const/4 v3, 0x1

    aget-wide v21, v2, v3

    .line 211
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 253
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 255
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 256
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->refreshDataSource(Ljava/util/List;ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    const-wide/16 v3, -0x1

    cmp-long v3, v13, v3

    if-eqz v3, :cond_2

    const-wide/16 v3, -0x1

    cmp-long v3, v15, v3

    if-eqz v3, :cond_2

    .line 258
    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->updateAccountSearchIndex()V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->c:Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;

    const-wide/16 v7, -0x1

    move-wide v3, v13

    move-wide v5, v15

    invoke-virtual/range {v2 .. v8}, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->setLocalFriendDataVersion(JJJ)V

    .line 262
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->i:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    const-string/jumbo v6, "save"

    const-string/jumbo v7, "false"

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "responseFriendSyncMessage:\u62a5\u544async\u6536\u5230"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 264
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 213
    const-string/jumbo v3, "pl"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    const-class v3, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;

    .line 215
    const-string/jumbo v2, "mod"

    iget-object v3, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>(Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;)V

    .line 217
    iget-wide v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->version:J

    cmp-long v3, v3, v11

    if-gtz v3, :cond_4

    iget-wide v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->extVersion:J

    cmp-long v3, v3, v21

    if-lez v3, :cond_c

    .line 218
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isDelete:Z

    .line 219
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-wide v13, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->version:J

    .line 221
    iget-wide v2, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->extVersion:J

    .line 211
    :goto_2
    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    move-wide v15, v2

    goto/16 :goto_1

    .line 223
    :cond_5
    const-string/jumbo v2, "del"

    iget-object v3, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 224
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>(Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v4, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 226
    iget-wide v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->version:J

    cmp-long v3, v3, v11

    if-gtz v3, :cond_6

    iget-wide v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->extVersion:J

    cmp-long v3, v3, v21

    if-lez v3, :cond_c

    .line 229
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isDelete:Z

    .line 230
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-wide v13, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->version:J

    .line 232
    iget-wide v2, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->extVersion:J

    goto :goto_2

    .line 234
    :cond_7
    const-string/jumbo v2, "mod_f"

    iget-object v3, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v3, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v6

    .line 236
    if-eqz v6, :cond_c

    iget-object v2, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-wide v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->extVersion:J

    cmp-long v2, v2, v21

    if-lez v2, :cond_c

    .line 237
    const/4 v2, 0x0

    iput-boolean v2, v6, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isDelete:Z

    .line 238
    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_a

    move-wide v2, v11

    .line 239
    :goto_3
    iget-object v4, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-wide v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->extVersion:J

    .line 240
    iget-object v7, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v7, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->headImg:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 241
    iget-object v7, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v7, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->headImg:Ljava/lang/String;

    iput-object v7, v6, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    .line 243
    :cond_8
    iget-object v7, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v7, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->nickName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 244
    iget-object v7, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v7, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->nickName:Ljava/lang/String;

    iput-object v7, v6, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    .line 246
    :cond_9
    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v13, v2

    move-wide v2, v4

    goto/16 :goto_2

    :cond_a
    move-wide v2, v13

    .line 238
    goto :goto_3

    .line 248
    :cond_b
    const-string/jumbo v2, "mod_mine"

    iget-object v3, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 249
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v2

    iget-object v3, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->signature:Ljava/lang/String;

    iget-object v4, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-boolean v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->searchByPhone:Z

    iget-object v5, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-boolean v5, v5, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->searchByEmail:Z

    iget-object v6, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-boolean v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->searchByTb:Z

    iget-object v7, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-boolean v7, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->allowRecommend:Z

    iget-object v8, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-boolean v8, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->showMsgDetail:Z

    iget-object v9, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-boolean v9, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->addByReq:Z

    invoke-virtual/range {v2 .. v9}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->setMineConfig(Ljava/lang/String;ZZZZZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->j:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v3, "my_setting"

    const-string/jumbo v4, "privacy"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "country"

    iget-object v4, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->country:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "province"

    iget-object v4, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->province:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "area"

    iget-object v4, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->area:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "signature"

    iget-object v4, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "callback.onReceiveSelfInfo:notifycountry: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->country:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " province: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->province:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " area: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->area:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " signature "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->msg:Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;

    iget-object v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/FriendVoExtendModel;->signature:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "UCHAT-MRFC"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_c
    move-wide v2, v15

    goto/16 :goto_2
.end method

.method public responseGroupSyncCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCmdReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseGroupSyncCommand:\u62a5\u544async\u6536\u5230\u547d\u4ee4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseGroupSyncCommand:\u91cd\u590d\u547d\u4ee4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->i:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    const-string/jumbo v4, "pullall"

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 299
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->l:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->d:Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->tryToRefreshData(Z)V

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCommandHandled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseGroupSyncCommand:\u62a5\u544async\u5904\u7406\u547d\u4ee4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public responseGroupSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 17

    .prologue
    .line 306
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "responseGroupSyncMessage:\u63a5\u6536sync\u6d88\u606f\u9519\u8bef"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_0
    return-void

    .line 311
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->i:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    const-string/jumbo v5, "receive"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 312
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    .line 313
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 314
    const-class v3, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    .line 315
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 316
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v9

    .line 317
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    .line 318
    const/4 v4, 0x0

    move v7, v4

    :goto_1
    if-lt v7, v10, :cond_3

    .line 391
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 392
    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/data/a;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v8}, Lcom/alipay/mobile/socialsdk/contact/data/a;-><init>(Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;Ljava/util/List;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 400
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->i:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    const-string/jumbo v5, "save"

    const-string/jumbo v6, "true"

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "responseGroupSyncMessage:\u62a5\u544async\u6536\u5230"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :cond_3
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 320
    const-string/jumbo v5, "pl"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    const-class v5, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;

    .line 322
    const/4 v5, 0x0

    .line 324
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 325
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 326
    const-string/jumbo v6, "all"

    iget-object v13, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->operation:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 327
    iget-object v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->groupBreif:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget-object v4, v4, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->groupId:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_4
    :goto_2
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_1

    .line 329
    :cond_5
    const-string/jumbo v6, "ONLY_M"

    iget-object v13, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->operation:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 330
    const/4 v5, 0x1

    .line 331
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 332
    iget-object v6, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->groupBreif:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget-object v14, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->members:Ljava/util/List;

    iput-object v14, v6, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->memberInfos:Ljava/util/List;

    .line 333
    iget-object v6, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->groupBreif:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget-object v14, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->config:Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;

    iput-object v14, v6, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->config:Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;

    .line 334
    iget-object v6, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->groupBreif:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget-object v14, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->permissions:Ljava/util/List;

    iput-object v14, v6, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->permissions:Ljava/util/List;

    .line 335
    new-instance v6, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v15, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->groupBreif:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    invoke-direct {v6, v14, v15, v13}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;-><init>(Ljava/lang/String;Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;Ljava/util/List;)V

    .line 336
    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 340
    :goto_3
    if-nez v5, :cond_e

    .line 345
    iget-wide v13, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->version:J

    iget-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->groupBreif:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget-wide v15, v5, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->version:J

    cmp-long v5, v13, v15

    if-gez v5, :cond_4

    .line 346
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->mIsIncremental:Z

    .line 350
    iget-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->groupBreif:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget-object v13, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->config:Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;

    iget-object v14, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->permissions:Ljava/util/List;

    invoke-virtual {v6, v5, v13, v14}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->initGroupBreif(Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;Ljava/util/List;)V

    .line 351
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->isCurrentUserQuit:Z

    .line 352
    iget-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->members:Ljava/util/List;

    if-nez v5, :cond_6

    .line 353
    new-instance v5, Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->members:Ljava/util/List;

    .line 355
    :cond_6
    iget-object v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->members:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_a

    .line 379
    :goto_5
    const/4 v4, 0x1

    invoke-virtual {v1, v6, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->refreshGroupInfo(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 380
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v11, v4, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->refreshDataSource(Ljava/util/List;ZZ)Z

    .line 387
    :cond_8
    :goto_6
    invoke-virtual {v3, v12}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->saveGroupMemberNicks(Ljava/util/List;)V

    goto :goto_2

    .line 338
    :cond_9
    iget-object v6, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;->groupBreif:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget-object v6, v6, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->queryGroupById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    move-result-object v6

    .line 339
    if-eqz v6, :cond_4

    goto :goto_3

    .line 355
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;

    .line 356
    const-string/jumbo v13, "del"

    iget-object v14, v4, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->operationType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 357
    iget-object v5, v4, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 358
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->isCurrentUserQuit:Z

    .line 360
    :cond_b
    iget-object v5, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    iget-object v13, v4, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    invoke-interface {v5, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 361
    iget-object v5, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    iget-object v4, v4, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->deleteGroupNick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 364
    :cond_c
    iget-object v13, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    iget-object v14, v4, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 365
    iget-object v13, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    iget-object v14, v4, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_d
    new-instance v13, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v13, v4}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>(Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v13, v4, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->groupNickName:Ljava/lang/String;

    if-eqz v13, :cond_7

    .line 370
    new-instance v13, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    invoke-direct {v13}, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;-><init>()V

    .line 371
    const-string/jumbo v14, "3"

    iput-object v14, v13, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->mimeType:Ljava/lang/String;

    .line 372
    iget-object v14, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    iput-object v14, v13, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data1:Ljava/lang/String;

    .line 373
    iget-object v14, v4, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    iput-object v14, v13, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data2:Ljava/lang/String;

    .line 374
    iget-object v4, v4, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->groupNickName:Ljava/lang/String;

    iput-object v4, v13, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    .line 375
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 384
    :cond_e
    iget-boolean v4, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->mIsNickIngroupChanged:Z

    if-eqz v4, :cond_8

    .line 385
    iget-object v4, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    iget-object v5, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->nickInGroup:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->updateNickInGroup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public responseMobileSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 407
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "responseMobileSyncMessage:\u63a5\u6536sync\u6d88\u606f\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->i:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    const-string/jumbo v4, "receive"

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 413
    new-instance v2, Lcom/squareup/wire/Wire;

    new-array v0, v7, [Ljava/lang/Class;

    invoke-direct {v2, v0}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 414
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 415
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    .line 416
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 417
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 418
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 419
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move v1, v7

    .line 420
    :goto_1
    if-lt v1, v4, :cond_a

    .line 455
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    .line 456
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 457
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->addSyncData(Ljava/util/List;)V

    .line 459
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 460
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->updateSyncData(Ljava/util/List;)V

    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseMobileSyncMessage:\u624b\u673a\u901a\u8baf\u5f55\u53d8\u66f4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_3
    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 464
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->e:Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->isMobileListAllLoaded()Z

    move-result v0

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "first_upload_size"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 465
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 467
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->e:Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    const-string/jumbo v3, "mobile_loaded_order"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->getOrderPreferences(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v2

    .line 468
    if-nez v0, :cond_5

    .line 469
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 470
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 471
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->e:Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    const-string/jumbo v4, "mobile_loaded_order"

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->addOrderPreferences(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 474
    :cond_5
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    .line 475
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->e:Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    invoke-virtual {v4}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->isMobileFirstLoaded()Z

    move-result v4

    .line 476
    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v6, "SocialSdk_Sdk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "responseMobileSyncMessage:\u4e0a\u4f20\u8fc7"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "\u603b\u4e0b\u53d1"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 477
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "\u672c\u6b21\u62ff\u5230pull"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " push"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 476
    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string/jumbo v5, "1"

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    if-nez v0, :cond_6

    if-nez v4, :cond_7

    :cond_6
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v4

    if-gtz v4, :cond_8

    .line 479
    :cond_7
    if-nez v0, :cond_f

    if-lt v3, v1, :cond_f

    if-eqz v1, :cond_f

    .line 480
    :cond_8
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/data/b;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/contact/data/b;-><init>(Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;I)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 494
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseMobileSyncMessage:\u62a5\u544async\u6536\u5230"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    :cond_a
    :try_start_0
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 423
    const-string/jumbo v10, "pl"

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    const/4 v10, 0x0

    invoke-static {v0, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 425
    const-class v10, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;

    .line 424
    invoke-virtual {v2, v0, v10}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;

    .line 426
    iget-object v10, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->m:Ljava/lang/String;

    iget-object v11, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->deviceId:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v10, "SocialSdk_Sdk"

    const-string/jumbo v11, "responseMobileSyncMessage:\u6536\u5230\u4e86\u4e0d\u662f\u5f53\u524d\u8bbe\u5907\u7684\u901a\u8baf\u5f55"

    invoke-interface {v0, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_b
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 430
    :cond_c
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->a()[I

    move-result-object v10

    iget-object v11, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->scene:Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    invoke-virtual {v11}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_3

    .line 432
    :pswitch_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 451
    :catch_0
    move-exception v0

    .line 452
    iget-object v10, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v11, "SocialSdk_Sdk"

    invoke-interface {v10, v11, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 435
    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getMobileMagicCode()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->lifeSessionId:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v10, "SocialSdk_Sdk"

    const-string/jumbo v11, "responseMobileSyncMessage:\u6536\u5230\u4e86\u6e05\u6d17\u65e7\u6570\u636e\u4e22\u5f03"

    invoke-interface {v0, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 439
    :cond_d
    iget-object v10, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v11, "SocialSdk_Sdk"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "responseMobileSyncMessage:\u6570\u636e\u79cd\u5b50"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->lifeSessionId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v10, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->needPull:Ljava/lang/Boolean;

    if-eqz v10, :cond_e

    iget-object v10, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->needPull:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 441
    iget-object v10, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v11, "SocialSdk_Sdk"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "responseMobileSyncMessage:\u6536\u5230\u901a\u8baf\u5f55\u62c9\u53d6"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->order:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->order:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 445
    :cond_e
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v10, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->order:Ljava/lang/Integer;

    if-eqz v10, :cond_b

    .line 447
    iget-object v0, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->order:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 490
    :cond_f
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->e:Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->trySetMobileListAllLoaded(II)V

    goto/16 :goto_2

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public responseRecommendationSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 144
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "responseRecommendationSyncMessage:\u63a5\u6536sync\u6d88\u606f\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->i:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    const-string/jumbo v4, "receive"

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    .line 152
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    move v2, v7

    .line 155
    :goto_1
    if-lt v2, v4, :cond_2

    .line 172
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 173
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->updateRecommendationList(Ljava/util/List;)Z

    move-result v1

    .line 174
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->updateRecentForNewFriend(Ljava/util/List;)V

    move v0, v1

    .line 176
    :goto_2
    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->i:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    iget-object v7, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v9, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    const-string/jumbo v10, "save"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v5

    invoke-interface/range {v6 .. v12}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->f:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseRecommendationSyncMessage:\u62a5\u544async\u6536\u5230"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 157
    const-string/jumbo v8, "pl"

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-class v8, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;

    invoke-static {v1, v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;

    .line 159
    const-string/jumbo v8, "addFriend"

    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 160
    new-instance v8, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    invoke-direct {v8, v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;)V

    .line 161
    iput v10, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->requestType:I

    .line 162
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_3
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 163
    :cond_4
    const-string/jumbo v8, "recommend"

    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 164
    new-instance v8, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    invoke-direct {v8, v1, v10}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/SyncContactModel;Z)V

    .line 165
    const/4 v1, 0x2

    iput v1, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->requestType:I

    .line 166
    invoke-virtual {v0, v8}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->isNeedUpdate(Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move v0, v7

    goto/16 :goto_2
.end method

.method public sendFriendEntryNotification()V
    .locals 1

    .prologue
    .line 538
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    .line 539
    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->sendFriendEntryInfo()V

    .line 543
    :cond_0
    return-void
.end method

.method public tryToFreshJoinedGroup()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "tryToFreshJoinedGroup"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->d:Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->tryToRefreshData(Z)V

    .line 122
    return-void
.end method

.method public tryToRefreshFriendList()V
    .locals 3

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->isFriendDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->c:Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->tryToRefreshData(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public tryToRefreshFriendListIfNotExisting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->isFriendDataLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "tryToRefreshFriendListIfNotExisting"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->c:Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;

    invoke-virtual {v0, v3, v3}, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->tryToRefreshData(ZZ)V

    .line 129
    :cond_0
    return-void
.end method

.method public tryToRefreshMobileListByInterval()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->e:Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->tryToRefreshData(Z)V

    .line 133
    return-void
.end method

.method public updateAccountSearchIndex()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->updateFriendSearchIndex()V

    .line 533
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->updateGroupNickSearchIndex()V

    .line 535
    :cond_0
    return-void
.end method
