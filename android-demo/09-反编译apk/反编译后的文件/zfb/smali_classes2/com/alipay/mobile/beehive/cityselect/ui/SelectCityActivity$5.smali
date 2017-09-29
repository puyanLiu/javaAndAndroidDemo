.class Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 435
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    iget-object v2, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->province:Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    iget-object v3, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    iget-object v4, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    .line 439
    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$11(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
