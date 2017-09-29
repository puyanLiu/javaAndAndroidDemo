.class Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5$1;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;

.field final synthetic val$finalCityVOList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

.field final synthetic val$finalHotCityVOList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5$1;->val$finalCityVOList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iput-object p3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5$1;->val$finalHotCityVOList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5$1;->val$finalCityVOList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$400(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5$1;->val$finalHotCityVOList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$500(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V

    .line 496
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$600(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)V

    .line 497
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->initView()V

    .line 498
    return-void
.end method
