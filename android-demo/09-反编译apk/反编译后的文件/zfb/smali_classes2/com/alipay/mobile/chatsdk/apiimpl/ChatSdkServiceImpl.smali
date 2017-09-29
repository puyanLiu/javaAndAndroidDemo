.class public Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;
.super Lcom/alipay/mobile/chatsdk/api/ChatSdkService;
.source "ChatSdkServiceImpl.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static volatile isBroadcastReceiverRegistered:Z

.field private static volatile isChatSyncCbRegistered:Z

.field private static volatile isNewsSyncCbRegistered:Z

.field private static volatile isRecommendSyncCbRegistered:Z

.field private static volatile isRelationSyncCbRegistered:Z

.field private static final newsSycnCallback:Lcom/alipay/mobile/publicplatform/news/NewsSycnCallbackImpl;

.field private static final recommendSyncCallback:Lcom/alipay/mobile/publicplatform/recommend/RecommendSyncCallbackImpl;

.field private static final relationSyncCallback:Lcom/alipay/mobile/publicplatform/relation/RelationSyncCallbackImpl;

.field private static final syncCallback:Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;


# instance fields
.field private broadcastReceiver:Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

.field private initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->LOGTAG:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->syncCallback:Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;

    .line 32
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/RelationSyncCallbackImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/relation/RelationSyncCallbackImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->relationSyncCallback:Lcom/alipay/mobile/publicplatform/relation/RelationSyncCallbackImpl;

    .line 33
    new-instance v0, Lcom/alipay/mobile/publicplatform/recommend/RecommendSyncCallbackImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/recommend/RecommendSyncCallbackImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->recommendSyncCallback:Lcom/alipay/mobile/publicplatform/recommend/RecommendSyncCallbackImpl;

    .line 34
    new-instance v0, Lcom/alipay/mobile/publicplatform/news/NewsSycnCallbackImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/news/NewsSycnCallbackImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->newsSycnCallback:Lcom/alipay/mobile/publicplatform/news/NewsSycnCallbackImpl;

    .line 36
    sput-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isChatSyncCbRegistered:Z

    .line 37
    sput-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isRelationSyncCbRegistered:Z

    .line 38
    sput-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isRecommendSyncCbRegistered:Z

    .line 39
    sput-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isNewsSyncCbRegistered:Z

    .line 40
    sput-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isBroadcastReceiverRegistered:Z

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/api/ChatSdkService;-><init>()V

    .line 42
    new-instance v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->broadcastReceiver:Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

    .line 24
    return-void
.end method

.method private registerLocalBroadCastReceiver()Z
    .locals 3

    .prologue
    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    const-string/jumbo v1, "com.alipay.socialsdk.recentmarkread"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v1, "com.alipay.socialsdk.recentdelete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "com.alipay.socialsdk.recentmarkunread"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "com.alipay.socialsdk.recentmarktop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "com.alipay.socialsdk.recentmarkuntop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "com.alipay.mobile.LAUNCHER_TAB_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->broadcastReceiver:Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method private registerSyncCallback()V
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isRelationSyncCbRegistered:Z

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->relationSyncCallback:Lcom/alipay/mobile/publicplatform/relation/RelationSyncCallbackImpl;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->registerRelationSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isRelationSyncCbRegistered:Z

    .line 66
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isChatSyncCbRegistered:Z

    if-nez v0, :cond_1

    .line 67
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->syncCallback:Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->registerChatSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isChatSyncCbRegistered:Z

    .line 71
    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isRecommendSyncCbRegistered:Z

    if-nez v0, :cond_2

    .line 72
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->recommendSyncCallback:Lcom/alipay/mobile/publicplatform/recommend/RecommendSyncCallbackImpl;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->registerRecommendSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isRecommendSyncCbRegistered:Z

    .line 75
    :cond_2
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isNewsSyncCbRegistered:Z

    if-nez v0, :cond_3

    .line 76
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->newsSycnCallback:Lcom/alipay/mobile/publicplatform/news/NewsSycnCallbackImpl;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->registerNewsSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isNewsSyncCbRegistered:Z

    .line 78
    :cond_3
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isBroadcastReceiverRegistered:Z

    if-nez v0, :cond_4

    .line 79
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->registerLocalBroadCastReceiver()Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isBroadcastReceiverRegistered:Z

    .line 81
    :cond_4
    return-void
.end method


# virtual methods
.method public getChatApi(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->registerSyncCallback()V

    .line 125
    invoke-static {p1, p2}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->getChatApi(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate: [ ChatSdkServiceImpl ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->registerSyncCallback()V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->copyOldData()V

    .line 57
    :cond_0
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy: [ ChatSdkServiceImpl ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->broadcastReceiver:Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isBroadcastReceiverRegistered:Z

    .line 105
    return-void
.end method

.method public registerChatApi(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->registerSyncCallback()V

    .line 116
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->registerChatApi(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;

    move-result-object v0

    return-object v0
.end method

.method public unRegisterChatApi(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;)Z
    .locals 1

    .prologue
    .line 133
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->unRegisterChatApi(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;)Z

    move-result v0

    return v0
.end method
