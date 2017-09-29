.class Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Lcom/alipay/mobile/common/lbs/LBSLocationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

.field private final synthetic val$proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->val$proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;)Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    return-object v0
.end method


# virtual methods
.method public onLocationFailed(I)V
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$2;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 696
    return-void
.end method

.method public onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 4

    .prologue
    .line 665
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->val$proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 667
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SelectCityActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onLocationUpdate:location="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    if-nez p1, :cond_0

    const-string/jumbo v0, "location = null"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$1;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 684
    return-void

    .line 668
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
