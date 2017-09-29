.class Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$1;
.super Ljava/lang/Object;
.source "LoadHomeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

.field private final synthetic val$friend:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$1;->val$friend:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$1;->val$friend:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    const-class v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/util/DiskCacheHelper;->writeToDisk(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    return-void
.end method
