.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14$1;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;

.field private final synthetic val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

.field private final synthetic val$templateStatusMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;Ljava/util/Map;Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14$1;->val$templateStatusMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14$1;->val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14$1;->val$templateStatusMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$30(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Ljava/util/Map;)V

    .line 1143
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14$1;->val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14$1;->val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-boolean v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->success:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14$1;->val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$23(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14$1;->val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->asyncLoadRecommendCacheData(Ljava/lang/String;)V

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$10(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;->endMainLink()V

    .line 1147
    return-void
.end method
