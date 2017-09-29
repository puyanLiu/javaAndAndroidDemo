.class Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$2;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$2;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$2;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$9(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$2;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    iget-object v1, v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$2;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$9(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->setSelection(I)V

    .line 363
    :cond_0
    return-void
.end method
