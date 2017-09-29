.class Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1$1;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;

.field private final synthetic val$finalCityVOList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

.field private final synthetic val$finalHotCityVOList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1$1;->val$finalCityVOList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iput-object p3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1$1;->val$finalHotCityVOList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;->access$0(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;)Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1$1;->val$finalCityVOList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$6(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;->access$0(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;)Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1$1;->val$finalHotCityVOList:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$7(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V

    .line 496
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;->access$0(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;)Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$8(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)V

    .line 497
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;->access$0(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;)Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->initView()V

    .line 498
    return-void
.end method
