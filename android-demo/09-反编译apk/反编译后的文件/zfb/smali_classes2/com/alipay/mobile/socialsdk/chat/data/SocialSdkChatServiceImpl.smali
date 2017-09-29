.class public Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;
.super Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;
.source "SocialSdkChatServiceImpl.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

.field private static b:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

.field private static c:Lcom/alipay/mobile/socialsdk/chat/data/InputSyncCallback;

.field private static d:Lcom/alipay/mobile/socialsdk/chat/data/LbsSyncCallback;

.field private static e:Lcom/alipay/mobile/socialsdk/chat/data/MsgSkinSyncCallback;

.field private static f:Lcom/alipay/mobile/socialsdk/chat/data/FundsGroupSyncCallBack;

.field private static g:Z

.field private static final h:Ljava/lang/Object;


# instance fields
.field private i:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

.field private j:Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

.field private k:Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;

.field private final l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 53
    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->b:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    .line 54
    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->c:Lcom/alipay/mobile/socialsdk/chat/data/InputSyncCallback;

    .line 55
    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->d:Lcom/alipay/mobile/socialsdk/chat/data/LbsSyncCallback;

    .line 56
    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->e:Lcom/alipay/mobile/socialsdk/chat/data/MsgSkinSyncCallback;

    .line 57
    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->f:Lcom/alipay/mobile/socialsdk/chat/data/FundsGroupSyncCallBack;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->g:Z

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->h:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;-><init>()V

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method

.method private static declared-synchronized a()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 3

    .prologue
    .line 67
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 69
    const-class v2, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 68
    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 71
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "initChatModuleForLoggin:start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "initChatModuleForLoggin:syncService\u521d\u59cb\u5316\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 110
    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "initChatModuleForLoggin:\u672a\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->refreshInstance(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    .line 115
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    move-result-object v0

    .line 116
    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "initChatModuleForLoggin:\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->c()V

    .line 122
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->g:Z

    .line 123
    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/data/b;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/socialsdk/chat/data/b;-><init>(Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 138
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "registerSyncCallback:syncService\u521d\u59cb\u5316\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "registerSyncCallback:\u6ce8\u518c\u4f1a\u8bddsync"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-G"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-INPUT"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "S_LBS"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-SKIN"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-FEE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->b:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;-><init>(Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->b:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    .line 152
    :cond_1
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->c:Lcom/alipay/mobile/socialsdk/chat/data/InputSyncCallback;

    if-nez v0, :cond_2

    .line 153
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/data/InputSyncCallback;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/data/InputSyncCallback;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->c:Lcom/alipay/mobile/socialsdk/chat/data/InputSyncCallback;

    .line 156
    :cond_2
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->d:Lcom/alipay/mobile/socialsdk/chat/data/LbsSyncCallback;

    if-nez v0, :cond_3

    .line 157
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/data/LbsSyncCallback;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/data/LbsSyncCallback;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->d:Lcom/alipay/mobile/socialsdk/chat/data/LbsSyncCallback;

    .line 160
    :cond_3
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->e:Lcom/alipay/mobile/socialsdk/chat/data/MsgSkinSyncCallback;

    if-nez v0, :cond_4

    .line 161
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/data/MsgSkinSyncCallback;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/data/MsgSkinSyncCallback;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->e:Lcom/alipay/mobile/socialsdk/chat/data/MsgSkinSyncCallback;

    .line 166
    :cond_4
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->f:Lcom/alipay/mobile/socialsdk/chat/data/FundsGroupSyncCallBack;

    if-nez v0, :cond_5

    .line 167
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/data/FundsGroupSyncCallBack;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/data/FundsGroupSyncCallBack;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->f:Lcom/alipay/mobile/socialsdk/chat/data/FundsGroupSyncCallBack;

    .line 169
    :cond_5
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT"

    sget-object v2, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->b:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 170
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-G"

    sget-object v2, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->b:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 171
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-INPUT"

    sget-object v2, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->c:Lcom/alipay/mobile/socialsdk/chat/data/InputSyncCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 172
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "S_LBS"

    sget-object v2, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->d:Lcom/alipay/mobile/socialsdk/chat/data/LbsSyncCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 173
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-SKIN"

    sget-object v2, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->e:Lcom/alipay/mobile/socialsdk/chat/data/MsgSkinSyncCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 174
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-FEE"

    sget-object v2, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->f:Lcom/alipay/mobile/socialsdk/chat/data/FundsGroupSyncCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 177
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;->getInstance()Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;

    .line 178
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->b:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerSyncStateCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback;)V

    .line 179
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->b:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->initSyncStateAgain()V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "registerSyncCallback:\u6ce8\u518c\u4f1a\u8bddsync\u7ed3\u675f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clearAllChatBg()V
    .locals 1

    .prologue
    .line 420
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    .line 421
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->clearChatBg()V

    .line 422
    return-void
.end method

.method public clearCallback()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;

    .line 427
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    .line 428
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->j:Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    .line 429
    return-void
.end method

.method public forwardMessages(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;)V
    .locals 3

    .prologue
    .line 248
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    .line 249
    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;

    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    const-string/jumbo v1, "shareType"

    const/16 v2, 0x110

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 253
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 255
    return-void
.end method

.method public generateMessageIncrementalId()J
    .locals 2

    .prologue
    .line 185
    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->g:Z

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->loadChatModule()V

    .line 185
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getIncrementalMessageId()J

    move-result-wide v0

    return-wide v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCurrentChatPage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 441
    const/4 v0, 0x0

    .line 442
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    move-result-object v1

    .line 443
    if-eqz v1, :cond_0

    .line 444
    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getCurrentChatPage()Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_0
    return-object v0
.end method

.method public getCurrentChatState()I
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->b:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->b:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->getCurrentState()Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->ordinal()I

    move-result v0

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getShareHandler()Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;

    return-object v0
.end method

.method public getShareResultCallback()Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    return-object v0
.end method

.method public getShareSelectCallback()Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->j:Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    return-object v0
.end method

.method public isInPreDownCache(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->isInPreDownCache(Ljava/lang/String;)Z

    move-result v0

    .line 455
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadChatModule()V
    .locals 4

    .prologue
    .line 76
    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "loadChatModule:start"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-boolean v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->g:Z

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "loadChatModule:\u672a\u767b\u5f55"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    monitor-exit v1

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "loadChatModule:\u5df2\u7ecf\u521d\u59cb\u5316"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->c()V

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 91
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->b()V

    .line 76
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public refreshChatModule()V
    .locals 4

    .prologue
    .line 97
    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "refreshChatModule:start"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->b()V

    .line 97
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public saveLocalMessage(Lcom/alipay/mobile/personalbase/model/LocalTempMessage;)V
    .locals 4

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "saveLocalMessage start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->createLocalMessage(Lcom/alipay/mobile/personalbase/model/LocalTempMessage;)V

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->l:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveLocalMessage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/personalbase/model/LocalTempMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public setChatBg(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 404
    if-eqz p1, :cond_0

    .line 405
    const-string/jumbo v0, "imgUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 406
    const-string/jumbo v0, "srcType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 407
    const-string/jumbo v0, "textColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 408
    const-string/jumbo v0, "chatType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    const-string/jumbo v0, "chatId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 410
    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    .line 414
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->saveChatBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCurrentChatPage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 433
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->setCurrentChatPage(Ljava/lang/String;)V

    .line 437
    :cond_0
    return-void
.end method

.method public shareEmotion(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;)V
    .locals 5

    .prologue
    .line 223
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    .line 224
    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;

    .line 225
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;-><init>()V

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 228
    const-string/jumbo v0, "13"

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 229
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;-><init>()V

    .line 230
    const-string/jumbo v4, "emotionFid"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionFid:Ljava/lang/String;

    .line 231
    const-string/jumbo v4, "packageId"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->packageId:Ljava/lang/String;

    .line 232
    const-string/jumbo v4, "emotionId"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionId:Ljava/lang/String;

    .line 233
    const-string/jumbo v4, "localPath"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->localPath:Ljava/lang/String;

    .line 234
    const-string/jumbo v4, "hasGif"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->hasGif:Z

    .line 235
    const-string/jumbo v4, "emotionWidth"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->setW(F)V

    .line 236
    const-string/jumbo v4, "emotionHeight"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->setH(F)V

    .line 237
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 238
    const-string/jumbo v0, "bizMemo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[\u52a8\u753b\u8868\u60c5]"

    :goto_0
    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 239
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const-string/jumbo v0, "shareType"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const-string/jumbo v0, "forwardMessages"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 242
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 244
    return-void

    .line 238
    :cond_0
    const-string/jumbo v0, "bizMemo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public shareMessage(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;)V
    .locals 3

    .prologue
    .line 211
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    .line 212
    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 217
    :cond_0
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method public shareMessage(Lcom/alipay/mobile/common/share/ShareContent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 274
    new-instance v1, Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-direct {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;-><init>()V

    .line 275
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setThumb(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setText(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setBigImage(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "alipays://platformapi/startapp?appId=20000067&url="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setUrl(Ljava/lang/String;)V

    .line 286
    :goto_0
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setShowExtraWord(Z)V

    .line 287
    const-string/jumbo v0, "text"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setType(I)V

    .line 321
    :cond_0
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 322
    const-class v2, Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ShareService;

    .line 321
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ShareService;->getShareActionListener()Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;

    move-result-object v0

    .line 325
    const/4 v2, 0x0

    new-instance v3, Lcom/alipay/mobile/socialsdk/chat/data/c;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/socialsdk/chat/data/c;-><init>(Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;)V

    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->shareMessage(Lcom/alipay/mobile/personalbase/model/ShareModel;ZLcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;)V

    .line 344
    return-void

    .line 284
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_2
    const-string/jumbo v0, "image"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setType(I)V

    .line 291
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "imageHeight"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "imageWidth"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "imageHeight"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setImageHeight(I)V

    .line 294
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "imageWidth"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setImageWidth(I)V

    goto :goto_1

    .line 296
    :cond_3
    const-string/jumbo v0, "webpage"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 297
    const-string/jumbo v0, "url"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 298
    const-string/jumbo v0, "1001"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 299
    const-string/jumbo v0, "1002"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 301
    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 302
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setThumb(Ljava/lang/String;)V

    .line 304
    :cond_5
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getImage()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setImageByte([B)V

    .line 305
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setType(I)V

    goto/16 :goto_1

    .line 306
    :cond_6
    const-string/jumbo v0, "stock"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setType(I)V

    .line 308
    const-string/jumbo v0, "stockName"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "stockName"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setExtendMapItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    const-string/jumbo v0, "stockCode"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "stockCode"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setExtendMapItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    const-string/jumbo v0, "stockPrice"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "stockPrice"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setExtendMapItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    const-string/jumbo v0, "stockPriceChange"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "stockPriceChange"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setExtendMapItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    const-string/jumbo v0, "stockPriceChangeRatio"

    .line 313
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "stockPriceChangeRatio"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 312
    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setExtendMapItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    const-string/jumbo v0, "time"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setExtendMapItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    const-string/jumbo v0, "status"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setExtendMapItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[\u80a1\u7968]"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "stockName"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 317
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "stockCode"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setBizMemo(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lcom/alipay/mobile/common/share/ShareContent;->getImage()[B

    move-result-object v0

    .line 319
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setImageByte([B)V

    goto/16 :goto_1
.end method

.method public shareMessage(Lcom/alipay/mobile/personalbase/model/ShareModel;ZLcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;)V
    .locals 3

    .prologue
    .line 260
    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->j:Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    .line 261
    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    .line 262
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    const-string/jumbo v1, "shareType"

    const/16 v2, 0x111

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string/jumbo v1, "shareContent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 265
    const-string/jumbo v1, "directShare"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 269
    return-void
.end method

.method public shareMessageDirectly(Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;)V
    .locals 3

    .prologue
    .line 359
    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->i:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    .line 360
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    const-string/jumbo v1, "shareContent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 362
    const-string/jumbo v1, "directShare"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string/jumbo v1, "userType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 367
    return-void
.end method

.method public shareOutAppMessage(Lcom/alipay/mobile/personalbase/model/ShareModel;)V
    .locals 3

    .prologue
    .line 386
    sget-boolean v0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkLoadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkLoadService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkLoadService;->loadSdk()V

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->clearCallback()V

    .line 388
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    const-string/jumbo v1, "shareType"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    const-string/jumbo v1, "shareContent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 391
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 393
    return-void
.end method

.method public showShareDialog(Lcom/alipay/mobile/personalbase/model/ShareModel;ZLcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;)V
    .locals 3

    .prologue
    .line 348
    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->j:Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    .line 349
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    const-string/jumbo v1, "shareContent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 351
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 354
    return-void
.end method
