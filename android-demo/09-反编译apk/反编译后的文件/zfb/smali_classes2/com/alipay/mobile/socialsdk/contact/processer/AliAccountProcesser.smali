.class public Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;
.super Ljava/lang/Object;
.source "AliAccountProcesser.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

.field private final c:Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;

.field private final d:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private final e:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

.field private final f:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

.field private final g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private final h:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

.field private final i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->a:Ljava/lang/String;

    .line 64
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->b:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 65
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;

    .line 66
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 67
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->d:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->d:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->e:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->d:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->f:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 71
    const-class v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->h:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 72
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 73
    return-void
.end method


# virtual methods
.method public getLocalFriendDataVersion()[J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 81
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "friend_version_v2"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 82
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "friend_extversion_v2"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 83
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "friend_update_v2"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 84
    return-object v0
.end method

.method public getWelcomeList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "welcome_list_v2"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    .line 119
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 126
    :cond_0
    return-object v0

    .line 121
    :cond_1
    aget-object v4, v2, v1

    .line 122
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public markPersonTop(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 263
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->b:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v1

    .line 264
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isTop:Z

    if-ne v2, p2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-object v0

    .line 268
    :cond_1
    new-instance v2, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;

    invoke-direct {v2}, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;-><init>()V

    .line 269
    iput-object p1, v2, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;->targetUserId:Ljava/lang/String;

    .line 270
    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;->alipayAccount:Ljava/lang/String;

    .line 271
    iput-boolean p2, v2, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;->switchStatus:Z

    .line 272
    const-string/jumbo v1, "putTop"

    iput-object v1, v2, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;->switchName:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->f:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-interface {v1, v2}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->setFriendConfig(Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;

    move-result-object v1

    .line 274
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultCode:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    .line 275
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->b:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    const-string/jumbo v2, "isTop"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->updateCertainFriendStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    :cond_2
    if-eqz v1, :cond_0

    .line 278
    iget-object v0, v1, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultDesc:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized queryAndLoadStrangerProfile(Ljava/util/List;Z)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 201
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "queryAndLoadStrangerProfile:\u8981\u67e5\u8be2\u7684\u8d26\u6237\u5217\u8868\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :goto_0
    monitor-exit p0

    return-object v0

    .line 205
    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->b:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-virtual {v0, v4, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->queryExistingAccounts(Ljava/util/HashSet;Z)Ljava/util/HashMap;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v0, v4, :cond_3

    move-object v0, v1

    .line 211
    goto :goto_0

    .line 206
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 207
    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 213
    :cond_3
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 223
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 224
    goto :goto_0

    .line 214
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 215
    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 216
    new-instance v6, Lcom/alipay/mobilerelation/biz/shared/req/model/ReqUserModel;

    invoke-direct {v6}, Lcom/alipay/mobilerelation/biz/shared/req/model/ReqUserModel;-><init>()V

    .line 217
    const/4 v7, 0x0

    aget-object v7, v0, v7

    iput-object v7, v6, Lcom/alipay/mobilerelation/biz/shared/req/model/ReqUserModel;->targetUserId:Ljava/lang/String;

    .line 218
    const/4 v7, 0x1

    aget-object v7, v0, v7

    iput-object v7, v6, Lcom/alipay/mobilerelation/biz/shared/req/model/ReqUserModel;->alipayAccount:Ljava/lang/String;

    .line 219
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v7, "SocialSdk_Sdk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "queryAndLoadStrangerProfile:\u6ca1\u627e\u5230"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    aget-object v0, v0, v9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 228
    :cond_6
    new-instance v0, Lcom/alipay/mobilerelation/biz/shared/req/MultiFriendsReq;

    invoke-direct {v0}, Lcom/alipay/mobilerelation/biz/shared/req/MultiFriendsReq;-><init>()V

    .line 229
    iput-object v4, v0, Lcom/alipay/mobilerelation/biz/shared/req/MultiFriendsReq;->targetUsers:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :try_start_3
    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v6, "SocialSdk_Sdk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "queryAndLoadStrangerProfile:\u8bf7\u6c42"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u7528\u6237\u4fe1\u606f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->e:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    invoke-interface {v5, v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;->getMultiContacts(Lcom/alipay/mobilerelation/biz/shared/req/MultiFriendsReq;)Lcom/alipay/mobilerelation/biz/shared/resp/MultiFriendsResult;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_b

    iget v5, v0, Lcom/alipay/mobilerelation/biz/shared/resp/MultiFriendsResult;->resultCode:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_b

    iget-object v5, v0, Lcom/alipay/mobilerelation/biz/shared/resp/MultiFriendsResult;->resultList:Ljava/util/List;

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/alipay/mobilerelation/biz/shared/resp/MultiFriendsResult;->resultList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 234
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/alipay/mobilerelation/biz/shared/resp/MultiFriendsResult;->resultList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    iget-object v0, v0, Lcom/alipay/mobilerelation/biz/shared/resp/MultiFriendsResult;->resultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->b:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->refreshDataSource(Ljava/util/List;ZZ)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 240
    if-eqz v0, :cond_8

    .line 242
    :try_start_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "queryAndLoadStrangerProfile:\u5408\u5e76\u7f51\u7edc\u8bf7\u6c42\u540e,\u603b\u5171"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u7528\u6237\u4fe1\u606f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 245
    invoke-interface {v0, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    .line 247
    goto/16 :goto_0

    .line 235
    :cond_7
    :try_start_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;

    .line 236
    new-instance v7, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v7, v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>(Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;)V

    .line 237
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 252
    :catch_0
    move-exception v0

    .line 253
    :goto_5
    :try_start_6
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v5, "SocialSdk_Sdk"

    invoke-interface {v3, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    :cond_8
    :goto_6
    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;

    if-eqz v0, :cond_9

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;->storeUidLidMapping(Ljava/util/List;)V

    .line 258
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryAndLoadStrangerProfile:\u672c\u5730\u53ea\u6709"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u7528\u6237\u4fe1\u606f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    .line 259
    goto/16 :goto_0

    .line 242
    :cond_a
    :try_start_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 243
    iget-object v5, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 252
    :catch_1
    move-exception v0

    move v2, v3

    goto :goto_5

    .line 250
    :cond_b
    :try_start_8
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    const-string/jumbo v5, "queryAndLoadStrangerProfile:\u8bf7\u6c42\u8fd4\u56de\u7ed3\u679c\u4e3a\u7a7a"

    invoke-interface {v0, v3, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6
.end method

.method public setLocalFriendDataVersion(JJJ)V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setLocalFriendDataVersion:\u597d\u53cb\u5217\u8868\u7248\u672c\u53f7\u5347\u4e3a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "friend_version_v2"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putLong(Ljava/lang/String;J)Z

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "friend_extversion_v2"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putLong(Ljava/lang/String;J)Z

    .line 99
    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-lez v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "friend_update_v2"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5, p6}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putLong(Ljava/lang/String;J)Z

    .line 102
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 103
    return-void
.end method

.method public tryToRefreshData(ZZ)V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    .line 130
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->getLocalFriendDataVersion()[J

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "tryToRefreshData:\u83b7\u53d6\u597d\u53cb\u5217\u8868"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-eqz p1, :cond_1

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 134
    aget-wide v3, v0, v7

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "tryToRefreshData:\u65f6\u95f4\u95f4\u9694\u672a\u5230, \u65e0\u9700\u66f4\u65b0\u597d\u53cb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    new-instance v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;

    invoke-direct {v1}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;-><init>()V

    .line 140
    if-eqz p2, :cond_4

    aget-wide v2, v0, v7

    cmp-long v2, v2, v5

    if-eqz v2, :cond_4

    .line 141
    aget-wide v2, v0, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->version:Ljava/lang/Long;

    .line 142
    aget-wide v2, v0, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->extVersion:Ljava/lang/Long;

    .line 148
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->e:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    invoke-interface {v0, v1}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;->getAllFriends(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;

    move-result-object v7

    .line 149
    if-eqz v7, :cond_b

    iget-object v0, v7, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_b

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "tryToRefreshData:\u63a5\u6536\u6b63\u5e38\u54cd\u5e94"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iget-object v0, v7, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, v7, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 158
    :cond_2
    iget-object v0, v7, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->deletedIds:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, v7, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->deletedIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->b:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-virtual {v0, v1, v8, v9}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->refreshDataSource(Ljava/util/List;ZZ)Z

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->h:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->a:Ljava/lang/String;

    const-string/jumbo v2, "UCHAT-MRFC"

    iget-object v3, v7, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->syncMaxOpId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->updateBizSyncKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tryToRefreshData:\u8d26\u6237\u62a5\u544aSync\u540c\u6b65\u70b9UCHAT-MRFC "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->syncMaxOpId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, v7, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->version:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v7, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->extVersion:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->setLocalFriendDataVersion(JJJ)V

    .line 170
    iget-object v0, v7, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->open:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "guide_shown_v2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 144
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->version:Ljava/lang/Long;

    .line 145
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->extVersion:Ljava/lang/Long;

    goto/16 :goto_1

    .line 153
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;

    .line 154
    new-instance v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;)V

    .line 155
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 159
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    new-instance v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    .line 161
    iput-object v0, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 162
    iput-boolean v8, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isDelete:Z

    .line 163
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 172
    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->getWelcomeList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->welcomeList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->b:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 174
    iget-object v1, v7, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->welcomeList:Ljava/util/List;

    .line 173
    invoke-virtual {v0, v1, v8}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->queryExistingAccounts(Ljava/util/List;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 185
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "welcome_list_v2"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->batchDownLoad(Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)Ljava/util/List;

    goto/16 :goto_0

    .line 177
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 178
    new-instance v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;

    invoke-direct {v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;-><init>()V

    .line 179
    iget-object v5, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->path:Ljava/lang/String;

    .line 180
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v4, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 182
    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 189
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/AliAccountProcesser;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "tryToRefreshData:\u8d26\u6237\u8bf7\u6c42\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
