.class Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;
.super Ljava/lang/Object;
.source "LoadHomeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

.field private final synthetic val$notifyFinished:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    iput-boolean p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->val$notifyFinished:Z

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 149
    const-class v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    const-class v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/util/DiskCacheHelper;->readFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    .line 150
    const-class v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    const-class v2, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/o2o/o2ocommon/util/DiskCacheHelper;->readFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    .line 151
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 166
    :cond_0
    const-class v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    const-class v2, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/o2o/o2ocommon/util/DiskCacheHelper;->readFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    .line 167
    const-class v2, Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;

    const-class v3, Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/android/phone/o2o/o2ocommon/util/DiskCacheHelper;->readFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;

    .line 168
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-static {v3, v2}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;)V

    .line 169
    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-static {v3}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 170
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-static {v3}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 184
    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->getCityInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->getCityInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 185
    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->getCityInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    .line 186
    const-class v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;

    new-instance v2, Ljava/lang/StringBuilder;

    const-class v3, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/o2o/o2ocommon/util/DiskCacheHelper;->readFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;

    .line 187
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 188
    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Ljava/lang/String;)V

    .line 190
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 191
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 192
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->templateId:Ljava/lang/String;

    .line 193
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->templateJson:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;->setRecommend(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;Ljava/lang/String;)V

    .line 197
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 198
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-static {v3}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->buildTemplate(Ljava/util/Map;Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper$OnTemplatePrepareFinish;)V

    .line 204
    :cond_4
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->val$notifyFinished:Z

    if-eqz v0, :cond_5

    .line 205
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$3;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    :cond_5
    return-void
.end method
