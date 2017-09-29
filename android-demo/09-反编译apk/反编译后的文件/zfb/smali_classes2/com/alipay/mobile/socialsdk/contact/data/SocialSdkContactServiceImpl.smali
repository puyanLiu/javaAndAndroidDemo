.class public Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;
.super Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;
.source "SocialSdkContactServiceImpl.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

.field private static b:Lcom/alipay/mobile/socialsdk/contact/data/RecommendationDataSyncCallback;

.field private static c:Lcom/alipay/mobile/socialsdk/contact/data/FriendDataSyncCallback;

.field private static d:Lcom/alipay/mobile/socialsdk/contact/data/GroupDataSyncCallback;

.field private static e:Lcom/alipay/mobile/socialsdk/contact/data/MobileDataSyncCallback;

.field private static g:Z

.field private static final m:Ljava/lang/Object;


# instance fields
.field private f:Lcom/alipay/mobile/framework/service/ext/contact/SelfInfoCallback;

.field private h:Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

.field private i:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

.field private j:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallbackOp;

.field private k:Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;

.field private l:Z

.field private n:J

.field private o:Z

.field private final p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 97
    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->b:Lcom/alipay/mobile/socialsdk/contact/data/RecommendationDataSyncCallback;

    .line 98
    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->c:Lcom/alipay/mobile/socialsdk/contact/data/FriendDataSyncCallback;

    .line 99
    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->d:Lcom/alipay/mobile/socialsdk/contact/data/GroupDataSyncCallback;

    .line 100
    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->e:Lcom/alipay/mobile/socialsdk/contact/data/MobileDataSyncCallback;

    .line 102
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->g:Z

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->m:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->l:Z

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->n:J

    .line 113
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method

.method private static declared-synchronized a()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 3

    .prologue
    .line 116
    const-class v1, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 118
    const-class v2, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 117
    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 120
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "initContactModuleForLoggin:start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "initContactModuleForLoggin:syncService\u521d\u59cb\u5316\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 158
    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "initContactModuleForLoggin:\u672a\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->initCacheForCurrentUser()V

    .line 163
    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->refreshInstance(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    .line 164
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v1

    .line 165
    if-nez v1, :cond_2

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "initContactModuleForLoggin:\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_2
    sget-object v2, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    const-string/jumbo v4, "registerFriendSyncCallback:syncService\u4e3a\u7a7a"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->g:Z

    .line 171
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/data/d;

    invoke-direct {v2, p0, v1, v0}, Lcom/alipay/mobile/socialsdk/contact/data/d;-><init>(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-static {v2}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    const-string/jumbo v4, "registerFriendSyncCallback:\u6ce8\u518c\u8054\u7cfb\u4ebasync"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v3, "UCHAT-MRF"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v3, "UCHAT-MRFC"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->b:Lcom/alipay/mobile/socialsdk/contact/data/RecommendationDataSyncCallback;

    if-nez v2, :cond_4

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/data/RecommendationDataSyncCallback;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/contact/data/RecommendationDataSyncCallback;-><init>()V

    sput-object v2, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->b:Lcom/alipay/mobile/socialsdk/contact/data/RecommendationDataSyncCallback;

    :cond_4
    sget-object v2, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->c:Lcom/alipay/mobile/socialsdk/contact/data/FriendDataSyncCallback;

    if-nez v2, :cond_5

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/data/FriendDataSyncCallback;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/contact/data/FriendDataSyncCallback;-><init>()V

    sput-object v2, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->c:Lcom/alipay/mobile/socialsdk/contact/data/FriendDataSyncCallback;

    :cond_5
    sget-object v2, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v3, "UCHAT-MRF"

    sget-object v4, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->b:Lcom/alipay/mobile/socialsdk/contact/data/RecommendationDataSyncCallback;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    sget-object v2, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v3, "UCHAT-MRFC"

    sget-object v4, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->c:Lcom/alipay/mobile/socialsdk/contact/data/FriendDataSyncCallback;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    const-string/jumbo v4, "registerFriendSyncCallback:\u6ce8\u518c\u8054\u7cfb\u4ebasync\u7ed3\u675f"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;)V
    .locals 3

    .prologue
    .line 204
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "registerGroupCallback:syncService\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "registerGroupCallback:\u6ce8\u518c\u7fa4sync"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-M"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->d:Lcom/alipay/mobile/socialsdk/contact/data/GroupDataSyncCallback;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/data/GroupDataSyncCallback;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/data/GroupDataSyncCallback;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->d:Lcom/alipay/mobile/socialsdk/contact/data/GroupDataSyncCallback;

    :cond_1
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-M"

    sget-object v2, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->d:Lcom/alipay/mobile/socialsdk/contact/data/GroupDataSyncCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "registerGroupCallback:\u6ce8\u518c\u7fa4sync\u7ed3\u675f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2, v2, v2}, Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;->handleNextOperation(ILandroid/app/Activity;Landroid/view/View;Ljava/util/List;)Z

    .line 319
    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    .line 321
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;)V
    .locals 3

    .prologue
    .line 219
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "registerMobileCallback:syncService\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "registerMobileCallback:\u6ce8\u518c\u901a\u8baf\u5f55sync"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-CONTACT"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->e:Lcom/alipay/mobile/socialsdk/contact/data/MobileDataSyncCallback;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/data/MobileDataSyncCallback;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/data/MobileDataSyncCallback;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->e:Lcom/alipay/mobile/socialsdk/contact/data/MobileDataSyncCallback;

    :cond_1
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-CONTACT"

    sget-object v2, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->e:Lcom/alipay/mobile/socialsdk/contact/data/MobileDataSyncCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "registerMobileCallback:\u6ce8\u518c\u901a\u8baf\u5f55sync\u7ed3\u675f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 598
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 600
    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

    .line 602
    :cond_0
    return-void
.end method


# virtual methods
.method public addFriend(Landroid/os/Bundle;)I
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 756
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 757
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move v0, v7

    .line 870
    :goto_0
    return v0

    .line 760
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 765
    const-string/jumbo v0, "1"

    .line 766
    if-eqz p1, :cond_10

    .line 767
    const-string/jumbo v0, "aliaccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 768
    const-string/jumbo v2, "bizType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 769
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 770
    const-string/jumbo v2, "1"

    .line 772
    :cond_2
    if-eqz v0, :cond_5

    .line 773
    iget-object v4, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 774
    iget-object v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 775
    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    .line 784
    :goto_1
    new-instance v0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;-><init>(Landroid/app/Activity;)V

    .line 785
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;)V

    .line 787
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 788
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 789
    const-class v8, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 787
    const-class v8, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    .line 792
    new-instance v8, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;

    invoke-direct {v8}, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;-><init>()V

    .line 793
    iput-object v2, v8, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->source:Ljava/lang/String;

    .line 794
    const-string/jumbo v2, ""

    iput-object v2, v8, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->message:Ljava/lang/String;

    .line 795
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v2

    .line 796
    if-eqz v2, :cond_3

    .line 797
    iget-object v2, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    iput-object v2, v8, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->remarkName:Ljava/lang/String;

    .line 799
    :cond_3
    iput-object v3, v8, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->bizType:Ljava/lang/String;

    .line 800
    iput-object v5, v8, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->targetUserId:Ljava/lang/String;

    .line 801
    iput-object v4, v8, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->alipayAccount:Ljava/lang/String;

    .line 802
    iput-boolean v6, v8, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->showRealName:Z

    .line 805
    :try_start_0
    invoke-interface {v1, v8}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->addFriendRequest(Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;)Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;

    move-result-object v2

    .line 806
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 807
    iget v1, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    const/16 v8, 0x13b

    if-ne v1, v8, :cond_6

    .line 809
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 810
    const-class v3, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;

    .line 809
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 811
    if-eqz p1, :cond_4

    .line 812
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 814
    :cond_4
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 815
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 817
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 777
    :cond_5
    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 778
    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    const-string/jumbo v3, "loginId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_1

    .line 818
    :cond_6
    :try_start_1
    iget v1, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    const/16 v8, 0x132

    if-ne v1, v8, :cond_9

    .line 819
    iget-object v1, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 820
    iget-object v1, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->toast(Ljava/lang/String;I)V

    .line 823
    :cond_7
    iget-object v1, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->friendVO:Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;

    if-eqz v1, :cond_8

    .line 824
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v2, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->friendVO:Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>(Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;)V

    move-object v2, v1

    .line 830
    :goto_2
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 831
    const-string/jumbo v3, "friendStatus"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v3, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->updateCertainFriendStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 832
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 833
    const-string/jumbo v3, "key_aliaccout"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 834
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->openPersonalProfilePage(Landroid/os/Bundle;)V

    .line 836
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 826
    :cond_8
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    .line 827
    iput-object v5, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 828
    iput-object v4, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    move-object v2, v1

    goto :goto_2

    .line 837
    :cond_9
    iget v1, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    const/16 v4, 0x144

    if-ne v1, v4, :cond_a

    iget-object v1, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 838
    const/4 v1, 0x0

    iget-object v2, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/data/e;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/contact/data/e;-><init>(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;)V

    .line 843
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 838
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    .line 844
    goto/16 :goto_0

    .line 845
    :cond_a
    iget v1, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    if-ne v1, v9, :cond_f

    .line 846
    const-string/jumbo v1, "3"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v0, v6

    .line 847
    goto/16 :goto_0

    .line 849
    :cond_b
    new-instance v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->friendVO:Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;

    invoke-direct {v3, v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>(Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;)V

    .line 850
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    const-string/jumbo v4, "updateNewContactData:\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 852
    :goto_3
    const/4 v1, 0x4

    .line 855
    :goto_4
    :try_start_2
    iget-object v3, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 856
    iget-object v2, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->toast(Ljava/lang/String;I)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    goto/16 :goto_0

    .line 850
    :cond_c
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->refreshDataSource(Ljava/util/List;ZZ)Z

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    iget-object v3, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->updataRecommendationFriend(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 861
    :catch_0
    move-exception v1

    .line 862
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 863
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "addFriend rpc\u5f02\u5e38"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    throw v1

    .line 857
    :cond_d
    :try_start_4
    iget v2, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    if-ne v2, v9, :cond_e

    .line 858
    const-string/jumbo v2, "\u6dfb\u52a0\u6210\u529f"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->toast(Ljava/lang/String;I)V
    :try_end_4
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v1

    goto/16 :goto_0

    .line 865
    :catch_1
    move-exception v1

    move-object v2, v1

    move v1, v7

    .line 866
    :goto_5
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 867
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    move v0, v1

    goto/16 :goto_0

    .line 865
    :catch_2
    move-exception v2

    goto :goto_5

    :cond_f
    move v1, v7

    goto :goto_4

    :cond_10
    move-object v3, v0

    move-object v4, v2

    move-object v5, v2

    goto/16 :goto_1
.end method

.method public addFriendDialog(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;)V
    .locals 3

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->clearAddFriendCallback()V

    .line 887
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;

    .line 888
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 889
    const-class v2, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    .line 888
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 890
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 891
    const-string/jumbo v1, "displayType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 892
    const-string/jumbo v1, "search_input_remind"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 893
    const-string/jumbo v1, "add_friend"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 894
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 895
    return-void
.end method

.method public addFriendDialogBatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 900
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 901
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 902
    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity_;

    .line 901
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 903
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string/jumbo v2, "subtitle"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string/jumbo v2, "addBatch"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 906
    const-string/jumbo v2, "batchFriends"

    check-cast p4, Ljava/io/Serializable;

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 907
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 908
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 909
    return-void
.end method

.method public beginUpload()V
    .locals 5

    .prologue
    .line 1144
    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 1145
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->o:Z

    if-eqz v0, :cond_0

    .line 1146
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;-><init>()V

    .line 1147
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;->setAppend(Z)V

    .line 1148
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/data/i;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/contact/data/i;-><init>(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;)V

    .line 1152
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1148
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->uploadSystemContactsAsync(Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;ZZ)V

    .line 1144
    :goto_0
    monitor-exit v1

    return-void

    .line 1154
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clearAddFriendCallback()V
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

    .line 881
    return-void
.end method

.method public clearCallback()V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    .line 449
    return-void
.end method

.method public clearContactPickerCallback()V
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

    .line 612
    return-void
.end method

.method public clearContactPickerCallbackOp()V
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->j:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallbackOp;

    .line 629
    return-void
.end method

.method public getAddFriendCallback()Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;

    return-object v0
.end method

.method public getContactPickerCallback()Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

    return-object v0
.end method

.method public getContactPickerCallbackOp()Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallbackOp;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->j:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallbackOp;

    return-object v0
.end method

.method public getMyInfoChangedListener()Lcom/alipay/mobile/framework/service/ext/contact/SelfInfoCallback;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->f:Lcom/alipay/mobile/framework/service/ext/contact/SelfInfoCallback;

    return-object v0
.end method

.method public getMyselfInfoByRpc()Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
    .locals 6

    .prologue
    .line 1198
    const/4 v1, 0x0

    .line 1201
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 1202
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1203
    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 1201
    const-class v2, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    .line 1206
    invoke-interface {v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;->getMyProfile()Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;

    move-result-object v2

    .line 1207
    if-eqz v2, :cond_0

    iget v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->resultCode:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    .line 1209
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    :try_start_1
    iget-object v1, v2, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->socialInfo:Lcom/alipay/mobilerelation/core/model/user/SocialInfo;

    .line 1211
    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->userId:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 1212
    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->nickName:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    .line 1213
    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->realName:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    .line 1214
    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->gender:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->gender:Ljava/lang/String;

    .line 1215
    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->headImg:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    .line 1216
    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->signature:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->signature:Ljava/lang/String;

    .line 1217
    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->userGrade:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userGrade:Ljava/lang/String;

    .line 1218
    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->province:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->province:Ljava/lang/String;

    .line 1219
    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->area:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->area:Ljava/lang/String;

    .line 1220
    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->realNameStatus:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->realNameStatus:Ljava/lang/String;

    .line 1221
    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->alipayAccount:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 1222
    iget-wide v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->version:J

    iput-wide v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->version:J

    .line 1223
    const/4 v3, 0x1

    iput v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->friendStatus:I

    .line 1224
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->realNameVisable:Z

    .line 1225
    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->zmCreditText:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->zmCreditText:Ljava/lang/String;

    .line 1226
    iget-object v1, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->zmCreditUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->zmCreditUrl:Ljava/lang/String;

    .line 1227
    const-string/jumbo v1, "Y"

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->lifeCircleType:Ljava/lang/String;

    .line 1230
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->socialInfo:Lcom/alipay/mobilerelation/core/model/user/SocialInfo;

    iget-boolean v3, v3, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->addByReq:Z

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->setNeedVerify(Z)V

    .line 1231
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->socialInfo:Lcom/alipay/mobilerelation/core/model/user/SocialInfo;

    iget-boolean v3, v3, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->allowRecommend:Z

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->setSendMeContact(Z)V

    .line 1232
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->socialInfo:Lcom/alipay/mobilerelation/core/model/user/SocialInfo;

    iget-boolean v3, v3, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->searchByEmail:Z

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->setSearchByAccount(Z)V

    .line 1233
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->socialInfo:Lcom/alipay/mobilerelation/core/model/user/SocialInfo;

    iget-boolean v3, v3, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->searchByEmail:Z

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->setSearchByPhone(Z)V

    .line 1234
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->socialInfo:Lcom/alipay/mobilerelation/core/model/user/SocialInfo;

    iget-object v3, v3, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->signature:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->setSignature(Ljava/lang/String;)V

    .line 1235
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v1

    iget-object v2, v2, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->socialInfo:Lcom/alipay/mobilerelation/core/model/user/SocialInfo;

    iget-boolean v2, v2, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->showMsgDetail:Z

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->setShowMsgDetail(Z)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1242
    :goto_0
    return-object v0

    .line 1239
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 1240
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1239
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getNextOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 946
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureNet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 959
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 960
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 961
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 959
    const-class v1, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipaySocilaInfoService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipaySocilaInfoService;

    .line 966
    :try_start_0
    invoke-interface {v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipaySocilaInfoService;->getSignature()Lcom/alipay/mobilerelation/biz/shared/resp/SingleValueResult;

    move-result-object v0

    .line 967
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleValueResult;->resultCode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 968
    iget-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleValueResult;->signature:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->setSignature(Ljava/lang/String;)V

    .line 969
    iget-object v0, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleValueResult;->signature:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    :goto_0
    return-object v0

    .line 972
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    .line 973
    const-string/jumbo v2, "getSignatureNet \u83b7\u53d6\u4e2a\u6027\u7b7e\u540d\u5931\u8d25"

    .line 972
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isAllMobileListLoaded()Z
    .locals 3

    .prologue
    .line 724
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v0

    .line 725
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->isAllMobileListLoaded()Z

    move-result v0

    .line 729
    :goto_0
    return v0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "isAllMobileListLoaded:\u901a\u8baf\u5f55\u771f\u7684\u6ca1\u6709\u5168\u90e8\u4e0b\u8f7d\u8fc7"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactsUploadPermitted(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "read_contacts_permissionv2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFriendListLoaded()Z
    .locals 1

    .prologue
    .line 539
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->isFriendDataLoaded()Z

    move-result v0

    .line 543
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocalMobileEmpty()Z
    .locals 3

    .prologue
    .line 740
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v0

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "local_mobile_empty"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isMobileListLoaded()Z
    .locals 4

    .prologue
    .line 710
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_1

    .line 712
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->isMobileListLoaded()Z

    move-result v1

    .line 713
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    if-eqz v1, :cond_0

    const-string/jumbo v0, "isMobileListLoaded:\u901a\u8baf\u5f55\u5df2\u7ecf\u4e0b\u8f7d"

    :goto_0
    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 718
    :goto_1
    return v0

    .line 714
    :cond_0
    const-string/jumbo v0, "isMobileListLoaded:\u901a\u8baf\u5f55\u6ca1\u6709\u6210\u529f\u4e0b\u8f7d\u8fc7"

    goto :goto_0

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "isMobileListLoaded:\u901a\u8baf\u5f55\u6ca1\u6709\u6210\u529f\u4e0b\u8f7d\u8fc7"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public loadContactModule()V
    .locals 4

    .prologue
    .line 125
    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "loadContactModule:start"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-boolean v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->g:Z

    if-eqz v0, :cond_1

    .line 128
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "loadContactModule:\u672a\u767b\u5f55"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    monitor-exit v1

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v2

    .line 134
    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "loadContactModule:\u5df2\u7ecf\u521d\u59cb\u5316"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 139
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->b()V

    .line 125
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public markFriendOrGroupTop(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 989
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v0

    .line 990
    if-nez v0, :cond_0

    .line 991
    const/4 v0, 0x0

    .line 993
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->markFriendOrGroupTop(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public openPersonalProfilePage(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 675
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 676
    const-class v2, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;

    .line 675
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 677
    if-eqz p1, :cond_0

    .line 678
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 680
    :cond_0
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 681
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 682
    return-void
.end method

.method public openSignaturePage()V
    .locals 3

    .prologue
    .line 980
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 981
    const-class v2, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;

    .line 980
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 982
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 983
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 984
    return-void
.end method

.method public permitContactsUpload(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "read_contacts_permissionv2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 666
    return-void
.end method

.method public pickFromContactsList()V
    .locals 3

    .prologue
    .line 515
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 516
    const-class v2, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    .line 515
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 519
    return-void
.end method

.method public queryAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
    .locals 1

    .prologue
    .line 453
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 454
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v0

    return-object v0
.end method

.method public queryAccountInGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
    .locals 2

    .prologue
    .line 473
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 474
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v1

    .line 475
    if-eqz v1, :cond_0

    .line 476
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    .line 477
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->queryGroupNick(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_0

    .line 479
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    .line 482
    :cond_0
    return-object v1
.end method

.method public queryAllMembersByGroupId(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    .line 460
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->getGroupInfoWithAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->memberAccounts:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->memberAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 463
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->memberAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 468
    :goto_1
    return-object v0

    .line 463
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 464
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 468
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public queryAndLoadAccountBriefInfoForTl(Ljava/util/List;)Ljava/util/HashMap;
    .locals 3
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
    .line 296
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v0

    .line 297
    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "queryAndLoadStrangerProfile:\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 302
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->queryAndLoadAccountBriefForTl(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method

.method public queryAndLoadGroupProfile(Ljava/util/List;Z)Ljava/util/List;
    .locals 3
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
    .line 307
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v0

    .line 308
    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "queryAndLoadGroupProfile:\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->checkAndLoadGroupProfile(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public queryAndLoadStrangerProfile(Ljava/util/List;)Ljava/util/HashMap;
    .locals 3
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
    .line 281
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v0

    .line 282
    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "queryAndLoadStrangerProfile:\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 286
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->queryAndLoadStrangerProfile(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method

.method public queryPushInfoForSocial(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/personalbase/model/SocialPushInfo;
    .locals 8

    .prologue
    const/high16 v7, 0x422c0000    # 43.0f

    .line 1006
    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 1007
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/personalbase/service/SocialSdkLoadService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkLoadService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkLoadService;->loadSdk()V

    .line 1006
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    new-instance v1, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;-><init>()V

    .line 1010
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getAcceptNewMsgNotify()Z

    move-result v0

    iput-boolean v0, v1, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->showPush:Z

    .line 1011
    iget-boolean v0, v1, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->showPush:Z

    if-nez v0, :cond_1

    move-object v0, v1

    .line 1058
    :goto_0
    return-object v0

    .line 1006
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1014
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1015
    const-class v2, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 1016
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->getCurrentChatPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1017
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->showPush:Z

    move-object v0, v1

    .line 1018
    goto :goto_0

    .line 1021
    :cond_2
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1022
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 1023
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v0

    .line 1024
    if-eqz v0, :cond_3

    .line 1025
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 1026
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "queryPushInfoForSocial:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u7ed3\u679c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    iput-object v2, v1, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->titleName:Ljava/lang/String;

    .line 1028
    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->headUrl:Ljava/lang/String;

    .line 1029
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->headSize:I

    move-object v0, v1

    .line 1030
    goto :goto_0

    .line 1033
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryPushInfoForSocial:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u7ed3\u679c\u7a7a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    move-object v0, v1

    .line 1058
    goto/16 :goto_0

    .line 1035
    :cond_5
    const-string/jumbo v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1036
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    .line 1037
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->getGroupInfoWithoutAccount(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    move-result-object v0

    .line 1038
    if-eqz v0, :cond_6

    .line 1039
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 1040
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "queryPushInfoForSocial:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u7ed3\u679c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iput-object v2, v1, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->titleName:Ljava/lang/String;

    .line 1042
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupImg:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->headUrl:Ljava/lang/String;

    .line 1043
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->headSize:I

    move-object v0, v1

    .line 1044
    goto/16 :goto_0

    .line 1046
    :cond_6
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/data/f;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/socialsdk/contact/data/f;-><init>(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1055
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryPushInfoForSocial:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u7ed3\u679c\u7a7a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public queryRecentFriends()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->g:Z

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->b()V

    .line 268
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->loadRecentFriendsByCount(Ljava/util/List;I)V

    .line 276
    return-object v1

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public refreshContactModule()V
    .locals 4

    .prologue
    .line 145
    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "refreshContactModule:start"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->l:Z

    .line 148
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->b()V

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeRecentListExternal(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->g:Z

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->b()V

    .line 254
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 260
    if-nez v0, :cond_1

    .line 264
    :goto_0
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 263
    :cond_1
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->removeRecentSessionsFromExternal(Ljava/util/List;)V

    goto :goto_0
.end method

.method public selectMultiAccount(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
    .locals 3

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->c()V

    .line 326
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 328
    const-class v2, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;

    .line 327
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 332
    :cond_0
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 335
    return-void
.end method

.method public selectMultiAccountWithInput(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
    .locals 3

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->c()V

    .line 340
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 342
    const-class v2, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;

    .line 341
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    if-eqz p1, :cond_0

    .line 344
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 346
    :cond_0
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "multi_input_account"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 349
    return-void
.end method

.method public selectMultiMemberFromGroup(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
    .locals 3

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->c()V

    .line 502
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    .line 503
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 504
    const-class v2, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;

    .line 503
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 505
    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 508
    :cond_0
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "group_multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 510
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 511
    return-void
.end method

.method public selectSingleAccount(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->c()V

    .line 354
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    .line 355
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 356
    const-class v3, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;

    .line 355
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 359
    const-string/jumbo v2, "title"

    const-string/jumbo v3, "xxx"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "single"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 365
    if-eqz p1, :cond_1

    .line 366
    const-string/jumbo v1, "modal"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 368
    :cond_1
    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 370
    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "push_up_in"

    const-string/jumbo v3, "anim"

    .line 372
    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    .line 371
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 373
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "dismiss_out"

    const-string/jumbo v4, "anim"

    .line 374
    const-string/jumbo v5, "com.eg.android.AlipayGphone"

    .line 373
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 378
    :cond_2
    return-void
.end method

.method public selectSingleMemberFromGroup(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
    .locals 3

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->c()V

    .line 488
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    .line 489
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 490
    const-class v2, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;

    .line 489
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    if-eqz p1, :cond_0

    .line 492
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 494
    :cond_0
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "group_single"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 497
    return-void
.end method

.method public selectSingleMobileRecord(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 415
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->c()V

    .line 416
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    .line 417
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 418
    const-class v3, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;

    .line 417
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    if-eqz p1, :cond_0

    .line 420
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 422
    :cond_0
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "phone_book"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 426
    if-eqz p1, :cond_1

    .line 427
    const-string/jumbo v1, "modal"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 429
    :cond_1
    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 431
    if-eqz v0, :cond_2

    .line 432
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "push_up_in"

    const-string/jumbo v3, "anim"

    .line 433
    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    .line 432
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 434
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "dismiss_out"

    const-string/jumbo v4, "anim"

    .line 435
    const-string/jumbo v5, "com.eg.android.AlipayGphone"

    .line 434
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 436
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 439
    :cond_2
    return-void
.end method

.method public selectSingleRecentAccount(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 387
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->c()V

    .line 388
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    .line 389
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 390
    const-class v3, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;

    .line 389
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 394
    :cond_0
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "single_recent"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 398
    if-eqz p1, :cond_1

    .line 399
    const-string/jumbo v1, "modal"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 401
    :cond_1
    if-eqz v0, :cond_2

    .line 402
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 403
    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "push_up_in"

    const-string/jumbo v3, "anim"

    .line 405
    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    .line 404
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 406
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "dismiss_out"

    const-string/jumbo v4, "anim"

    .line 407
    const-string/jumbo v5, "com.eg.android.AlipayGphone"

    .line 406
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 408
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 411
    :cond_2
    return-void
.end method

.method public sendQueryFriendEntryRequestAsync()V
    .locals 1

    .prologue
    .line 1125
    sget-boolean v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->g:Z

    if-nez v0, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1128
    :cond_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/data/h;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/data/h;-><init>(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setLocalMobileEmpty(Z)V
    .locals 3

    .prologue
    .line 734
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v0

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "local_mobile_empty"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 736
    return-void
.end method

.method public setMyInfoChangedListener(Lcom/alipay/mobile/framework/service/ext/contact/SelfInfoCallback;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->f:Lcom/alipay/mobile/framework/service/ext/contact/SelfInfoCallback;

    .line 914
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 954
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->setSignature(Ljava/lang/String;)V

    .line 955
    return-void
.end method

.method public setUpNewChatRoom(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
    .locals 3

    .prologue
    .line 686
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    .line 687
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 688
    const-class v2, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;

    .line 687
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 689
    if-eqz p1, :cond_0

    .line 690
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 692
    :cond_0
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 693
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 694
    return-void
.end method

.method public startQuery(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 561
    if-nez p1, :cond_0

    .line 562
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 575
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->d()V

    .line 566
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

    .line 567
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 568
    const-class v2, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    .line 567
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 570
    const-string/jumbo v1, "displayType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    const-string/jumbo v1, "search_input"

    const-string/jumbo v2, "rawInput"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string/jumbo v1, "search_input_remind"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 573
    const-string/jumbo v1, "search_input_scheme"

    const-string/jumbo v2, "scheme"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startQuery(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 548
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->d()V

    .line 549
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

    .line 550
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 551
    const-class v2, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    .line 550
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 552
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 553
    const-string/jumbo v1, "displayType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    const-string/jumbo v1, "search_input"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string/jumbo v1, "search_input_remind"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 557
    return-void
.end method

.method public startQueryNoRemind(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallbackOp;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 582
    if-nez p1, :cond_0

    .line 595
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->j:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallbackOp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->j:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallbackOp;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallbackOp;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Z)V

    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->j:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallbackOp;

    .line 586
    :cond_1
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->j:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallbackOp;

    .line 587
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 588
    const-class v2, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    .line 587
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 590
    const-string/jumbo v1, "displayType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const-string/jumbo v1, "search_input"

    const-string/jumbo v2, "rawInput"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string/jumbo v1, "search_input_scheme"

    const-string/jumbo v2, "scheme"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    const-string/jumbo v1, "search_input_remind"

    const-string/jumbo v2, "remind"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public tryToLoadMobileList()V
    .locals 3

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->l:Z

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "tryToLoadMobileList:\u6b63\u5728\u5237\u65b0\u624b\u673a\u901a\u8baf\u5f55,\u4e0d\u91cd\u590d\u5237\u8fd4\u56de"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :goto_0
    return-void

    .line 702
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->l:Z

    .line 703
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v0

    .line 704
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->tryToRefreshMobileListByInterval()V

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->l:Z

    goto :goto_0
.end method

.method public tryToRefreshJoinedGroup()V
    .locals 1

    .prologue
    .line 523
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->tryToFreshJoinedGroup()V

    .line 527
    :cond_0
    return-void
.end method

.method public tryToRefreshMyFriends()V
    .locals 1

    .prologue
    .line 531
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->tryToRefreshFriendListIfNotExisting()V

    .line 535
    :cond_0
    return-void
.end method

.method public updataAliAccountByRpc(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
    .locals 5

    .prologue
    .line 1164
    const/4 v2, 0x0

    .line 1166
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 1167
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1168
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 1166
    const-class v1, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    .line 1171
    new-instance v1, Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;

    invoke-direct {v1}, Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;-><init>()V

    .line 1172
    iput-object p1, v1, Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;->alipayAccount:Ljava/lang/String;

    .line 1173
    iput-object p2, v1, Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;->targetUserId:Ljava/lang/String;

    .line 1174
    invoke-interface {v0, v1}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;->getProfile(Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;)Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;

    move-result-object v0

    .line 1175
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;->resultCode:I

    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    .line 1176
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;->friendVO:Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>(Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1179
    const-class v2, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    .line 1180
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->loadPinyinLib()V

    .line 1181
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->initPinyin(Lcom/alipay/mobile/personalbase/service/PinyinSearchService;)V

    .line 1182
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1190
    :goto_0
    return-object v0

    .line 1186
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 1187
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1186
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public updateAccountSearchIndexAsync()V
    .locals 6

    .prologue
    .line 1063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1064
    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->n:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x124f80

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1077
    :goto_0
    return-void

    .line 1067
    :cond_0
    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->n:J

    .line 1068
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/data/g;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/data/g;-><init>(Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateRecentListExternal(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "updateRecentListExternal:\u7a7a\u5217\u8868\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 240
    :cond_2
    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->g:Z

    if-nez v0, :cond_3

    .line 242
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->b()V

    .line 240
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 246
    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateRecentSessionsFromExternal(Ljava/util/List;)V

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateTimelineInfo(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1081
    if-nez p1, :cond_0

    .line 1121
    :goto_0
    return-void

    .line 1084
    :cond_0
    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1085
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "updateTimelineInfo\u66f4\u65b0\u751f\u6d3b\u5708\u8d26\u6237\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1089
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v1

    .line 1090
    const-string/jumbo v2, "leftUnread"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1091
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "leftUnread"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "leftUnread"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putInt(Ljava/lang/String;I)Z

    .line 1093
    :cond_2
    const-string/jumbo v2, "leftUnreadStyle"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "leftUnreadStyle"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "leftUnreadStyle"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1097
    :cond_3
    const-string/jumbo v2, "rightUnread"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rightUnread"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "rightUnread"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putInt(Ljava/lang/String;I)Z

    .line 1100
    :cond_4
    const-string/jumbo v2, "rightUnreadStyle"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rightUnreadStyle"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "rightUnreadStyle"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1104
    :cond_5
    const-string/jumbo v2, "rightIcon"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rightIcon"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "rightIcon"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1108
    :cond_6
    const-string/jumbo v2, "rightMemo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rightMemo"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "rightMemo"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1112
    :cond_7
    const-string/jumbo v2, "createTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createTime"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "createTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putLong(Ljava/lang/String;J)Z

    .line 1116
    :cond_8
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 1117
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1118
    const-class v1, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1117
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 1119
    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "timelinetable"

    .line 1120
    const/4 v5, 0x1

    move-object v4, v3

    move-object v6, v3

    .line 1119
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public uploadSystemContactsAsync(Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;ZZ)V
    .locals 9

    .prologue
    .line 634
    const-wide/32 v0, 0x1b7740

    .line 635
    if-nez p1, :cond_4

    .line 636
    const-wide/32 v0, 0x6ddd00

    .line 640
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v2

    .line 641
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mobile_upload_timestampv2"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 643
    sub-long v7, v5, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    cmp-long v0, v7, v0

    if-gtz v0, :cond_1

    if-eqz p4, :cond_7

    .line 644
    :cond_1
    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    invoke-direct {v1, p3}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;-><init>(Z)V

    .line 645
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v7, "SocialSdk_Sdk"

    const-string/jumbo v8, "uploadSystemContactsAsync:\u5f00\u59cb\u4e0a\u4f20\u7cfb\u7edf\u901a\u8baf\u5f55"

    invoke-interface {v0, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mobile_db_transfer"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 647
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-eqz v7, :cond_5

    if-nez v0, :cond_5

    .line 648
    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->transferDataBetweenDb()V

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mobile_db_transfer"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 653
    :cond_2
    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, p2, v0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->updateContactsAsync(Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;Z)V

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobile_upload_timestampv2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putLong(Ljava/lang/String;J)V

    .line 661
    :cond_3
    :goto_3
    return-void

    .line 637
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->isGoodNetwork()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    const-wide/32 v0, 0x1b7740

    goto/16 :goto_0

    .line 650
    :cond_5
    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_2

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mobile_db_transfer"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 653
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 656
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/SocialSdkContactServiceImpl;->p:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "uploadSystemContactsAsync:\u65e0\u9700\u4e0a\u4f20, \u65f6\u95f4\u95f4\u9694\u672a\u5230"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    if-eqz p2, :cond_3

    .line 658
    const/4 v0, 0x1

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-interface {p2, v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;->uploadResult(ZIZ)V

    goto :goto_3
.end method
