.class public Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;
.super Ljava/lang/Object;
.source "LoadHomeCache.java"


# instance fields
.field private final callCacheListener:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

.field private final context:Landroid/app/Activity;

.field private lastHotWord:Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->lastHotWord:Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;

    .line 47
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->context:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->callCacheListener:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->callCacheListener:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->lastHotWord:Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;

    return-void
.end method


# virtual methods
.method public asyncLoadCacheData(Z)V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method public asyncLoadRecommendCacheData(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$4;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$4;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public asyncSaveCacheCategory(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public asyncSaveCacheData(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public asyncSaveCacheFriend(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;)V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public getLastHotWord()Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->lastHotWord:Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;

    return-object v0
.end method
