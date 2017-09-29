.class Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;
.super Ljava/lang/Object;
.source "LoadHomeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

.field private final synthetic val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->setMenus(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    .line 83
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->setCityInfo(Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;)V

    .line 84
    const-class v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/util/DiskCacheHelper;->writeToDisk(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->promoInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;->setPromoInfo(Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;)V

    .line 88
    const-class v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/util/DiskCacheHelper;->writeToDisk(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;

    invoke-direct {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->searchHotwordInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;->setSearchHotWordInfo(Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;)V

    .line 92
    const-class v1, Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/util/DiskCacheHelper;->writeToDisk(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const/4 v0, -0x1

    .line 94
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->searchHotwordInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->searchHotwordInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;->searchHotwords:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->searchHotwordInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;->searchHotwords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 97
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "searchHotwordInfo size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-boolean v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->success:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    .line 102
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;

    invoke-direct {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;-><init>()V

    .line 103
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v2, v2, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;->setMrp(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    const-class v3, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/DiskCacheHelper;->writeToDisk(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
