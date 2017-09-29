.class Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz$1;
.super Ljava/lang/Object;
.source "CitySelectBiz.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCitySelect(Lcom/alipay/mobile/beehive/cityselect/model/CityVO;)V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CitySelectCallBack"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

    iget-object v1, p1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->onCitySelected(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method
