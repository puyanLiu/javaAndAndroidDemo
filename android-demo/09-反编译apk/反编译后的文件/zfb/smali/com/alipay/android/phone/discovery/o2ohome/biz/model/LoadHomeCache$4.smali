.class Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$4;
.super Ljava/lang/Object;
.source "LoadHomeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

.field private final synthetic val$adCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$4;->val$adCode:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 117
    monitor-enter p0

    .line 119
    :try_start_0
    const-class v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;

    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$4;->val$adCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/util/DiskCacheHelper;->readFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$4;->val$adCode:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Ljava/lang/String;)V

    .line 124
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->templateId:Ljava/lang/String;

    .line 127
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->templateJson:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v1, v0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;->setRecommend(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/RecommendCache;Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-static {v3}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->buildTemplate(Ljava/util/Map;Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper$OnTemplatePrepareFinish;)V

    .line 136
    :cond_1
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
