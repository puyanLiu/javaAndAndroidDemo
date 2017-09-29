.class Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$2;
.super Ljava/lang/Object;
.source "LoadHomeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;

.field private final synthetic val$hotWord:Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;

.field private final synthetic val$promoInfo:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$2;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$2;->val$promoInfo:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    iput-object p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$2;->val$hotWord:Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$2;->val$promoInfo:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$2;->val$promoInfo:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;->getPromoInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$2;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$2;->val$promoInfo:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;->onPromoInfoFinish(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$2;->val$hotWord:Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$2;->val$hotWord:Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;->getSearchHotWordInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$2;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$2;->val$hotWord:Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;->onSearchHotWordFinish(Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;)V

    .line 179
    :cond_1
    return-void
.end method
