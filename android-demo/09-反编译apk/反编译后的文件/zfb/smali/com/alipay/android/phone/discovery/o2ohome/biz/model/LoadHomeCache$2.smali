.class Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$2;
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
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$2;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$2;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->setMenus(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    .line 69
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$2;->val$rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->setCityInfo(Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;)V

    .line 70
    const-class v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/util/DiskCacheHelper;->writeToDisk(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
