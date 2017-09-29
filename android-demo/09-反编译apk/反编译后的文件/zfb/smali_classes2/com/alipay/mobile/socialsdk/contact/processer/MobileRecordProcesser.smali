.class public Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;
.super Ljava/lang/Object;
.source "MobileRecordProcesser.java"


# static fields
.field public static final MOBILERECORD_TRYLOAD_9_TAG:Ljava/lang/String; = "mobile_record_try"

.field public static final MOBILERECORD_TRYLOAD_TAG:Ljava/lang/String; = "mobile_record_try_v2"

.field public static final MOBILE_LOADED_TAG:Ljava/lang/String; = "mobile_loaded_time"

.field public static final MOBILE_LOAD_FAIL_TAG:Ljava/lang/String; = "mobile_load_fail"

.field public static final MOBILE_ORDER_TAG:Ljava/lang/String; = "mobile_loaded_order"


# instance fields
.field private final a:Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

.field private final b:Lcom/alipay/mobilerelation/rpc/FriendRecommendRpc;

.field private final c:Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private f:Z

.field private g:Ljava/lang/Object;

.field private h:Z

.field private i:Lcom/alipay/mobile/base/config/ConfigService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->f:Z

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->g:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->d:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 52
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    .line 53
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 54
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 55
    const-class v1, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->c:Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    .line 56
    const-class v1, Lcom/alipay/mobilerelation/rpc/FriendRecommendRpc;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/rpc/FriendRecommendRpc;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->b:Lcom/alipay/mobilerelation/rpc/FriendRecommendRpc;

    .line 57
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->i:Lcom/alipay/mobile/base/config/ConfigService;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobile_record_try"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->h:Z

    .line 59
    return-void
.end method


# virtual methods
.method public addOrderPreferences(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getLastModileLoadedTimestamp()J
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobile_loaded_time"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOrderPreferences(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 183
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 184
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 185
    return-object v1
.end method

.method public isLastDownloadFailed()Z
    .locals 5

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobile_load_fail"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isLastDownloadFailed:\u4e0a\u6b21\u62c9\u53d6\u5931\u8d25"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return v0
.end method

.method public isMobileFirstLoaded()Z
    .locals 1

    .prologue
    .line 169
    const-string/jumbo v0, "mobile_loaded_order"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->getOrderPreferences(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMobileListAllLoaded()Z
    .locals 5

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobile_record_try_v2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isMobileListAllLoaded:\u901a\u8baf\u5f55\u5168\u90e8"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return v0
.end method

.method public setLastDownloadFailed(Z)V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobile_load_fail"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    return-void
.end method

.method public setMobileLoadedTimestamp()V
    .locals 3

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobile_loaded_time"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putLong(Ljava/lang/String;J)V

    .line 145
    return-void
.end method

.method public trySetMobileListAllLoaded()V
    .locals 3

    .prologue
    .line 155
    const-string/jumbo v0, "mobile_loaded_order"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->getOrderPreferences(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "first_upload_size"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    const/4 v2, 0x0

    .line 156
    invoke-static {v1, v2}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 158
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->trySetMobileListAllLoaded(II)V

    .line 159
    return-void
.end method

.method public trySetMobileListAllLoaded(II)V
    .locals 3

    .prologue
    .line 162
    if-lt p1, p2, :cond_0

    if-eqz p2, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobile_record_try_v2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "trySetMobileListAllLoaded:\u8bbe\u7f6e\u901a\u8baf\u5f55\u5168\u90e8\u62ff\u5230"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method

.method public declared-synchronized tryToRefreshData(Z)V
    .locals 13

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->f:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "tryToRefreshData:\u901a\u8baf\u5f55\u62c9\u53d6ing,\u4e0d\u91cd\u590d"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_0
    monitor-exit p0

    return-void

    .line 66
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->getLastModileLoadedTimestamp()J

    move-result-wide v2

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->isLastDownloadFailed()Z

    move-result v6

    .line 69
    const-wide/32 v0, 0x240c8400

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->isMobileFirstLoaded()Z

    move-result v7

    .line 71
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->isMobileListAllLoaded()Z

    move-result v8

    .line 72
    iget-object v9, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v10, "SocialSdk_Sdk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "tryToRefreshData:\u901a\u8baf\u5f55\u9996\u6b21"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u5168\u90e8"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    if-eqz v7, :cond_1

    if-nez v8, :cond_1

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->i:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "mobileContactTimeout"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 76
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 84
    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-gtz v7, :cond_1

    .line 85
    const-wide/32 v0, 0x2bf20

    .line 88
    :cond_1
    if-nez v6, :cond_5

    if-eqz p1, :cond_5

    :try_start_3
    iget-boolean v7, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->h:Z

    if-nez v7, :cond_2

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-eqz v7, :cond_3

    .line 89
    :cond_2
    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "tryToRefreshData:\u901a\u8baf\u5f55\u5168\u91cf\u8865\u507f\u65f6\u95f4\u672a\u5230"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :cond_4
    const-wide/32 v0, 0x2bf20

    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    const-wide/32 v0, 0x2bf20

    goto :goto_1

    .line 94
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->getSystemContactCount()I

    move-result v0

    .line 95
    if-nez v0, :cond_6

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "tryToRefreshData:\u624b\u673a\u65e0\u7cfb\u7edf\u901a\u8baf\u5f55, \u4e0d\u62c9\u53d6"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->f:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 102
    :try_start_5
    new-instance v0, Lcom/alipay/mobilerelation/rpc/protobuf/request/Request;

    invoke-direct {v0}, Lcom/alipay/mobilerelation/rpc/protobuf/request/Request;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->b:Lcom/alipay/mobilerelation/rpc/FriendRecommendRpc;

    invoke-interface {v1, v0}, Lcom/alipay/mobilerelation/rpc/FriendRecommendRpc;->getMobileContactList(Lcom/alipay/mobilerelation/rpc/protobuf/request/Request;)Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_b

    iget-object v1, v0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_b

    .line 105
    iget-object v1, v0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultList:Ljava/util/List;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tryToRefreshData:\u624b\u673a\u901a\u8baf\u5f55\u63a5\u6536\u6b63\u5e38"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->c:Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v2}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->loadPinyinLib()V

    .line 109
    iget-object v0, v0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->c:Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tryToRefreshData:\u51c6\u5907\u4fdd\u5b58\u624b\u673a\u901a\u8baf\u5f55"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->addAllMobileInfo(Ljava/util/List;)V

    .line 115
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->setMobileLoadedTimestamp()V

    .line 116
    if-nez p1, :cond_7

    if-eqz v6, :cond_9

    .line 118
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobile_record_try_v2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "tryToRefreshData:\u624b\u673a\u901a\u8baf\u5f55\u4fdd\u5b58\u5b8c\u6bd5"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->setLastDownloadFailed(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    :goto_5
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->f:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 109
    :cond_8
    :try_start_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;

    .line 110
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->convertMobileToAccount(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;Ljava/util/List;ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 132
    :catch_1
    move-exception v0

    .line 133
    :try_start_8
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->setLastDownloadFailed(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 120
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->trySetMobileListAllLoaded()V

    goto :goto_3

    .line 124
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->addAllMobileInfo(Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "tryToRefreshData:\u901a\u8baf\u5f55\u63a5\u6536\u7a7a\u54cd\u5e94"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 129
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->e:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "tryToRefreshData:\u83b7\u53d6\u624b\u673a\u901a\u8baf\u5f55\u8bf7\u6c42\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->setLastDownloadFailed(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5
.end method
