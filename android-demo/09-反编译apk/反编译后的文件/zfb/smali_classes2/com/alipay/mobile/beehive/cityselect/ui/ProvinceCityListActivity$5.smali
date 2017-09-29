.class Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$5;
.super Ljava/lang/Object;
.source "ProvinceCityListActivity.java"

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
.field final synthetic this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$18(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$5;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    iget-object v2, v2, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->handleItemClick(II)V

    .line 322
    return-void
.end method
