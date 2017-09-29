.class Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz$2;
.super Ljava/lang/Object;
.source "CitySelectBiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

.field private final synthetic val$resp:Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz$2;->val$resp:Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz$2;->val$resp:Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    const-class v1, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/util/DiskCacheHelper;->writeToDisk(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    return-void
.end method
