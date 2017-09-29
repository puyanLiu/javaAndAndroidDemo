.class Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$1;
.super Ljava/lang/Object;
.source "LoadHomeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;

.field private final synthetic val$category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

.field private final synthetic val$friend:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$1;->val$friend:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    iput-object p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$1;->val$category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$1;->val$friend:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$1;->val$friend:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;->isbHasRedHot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$1;->val$friend:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;->onFriendSyncFinish(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$1;->val$category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->getMenus()Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$1;->val$category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->getCityInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$1;->val$category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;->onCategoryFinish(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;)V

    .line 161
    :cond_2
    return-void
.end method
