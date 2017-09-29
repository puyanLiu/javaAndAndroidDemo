.class Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$3;
.super Ljava/lang/Object;
.source "ProvinceCityListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$12(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$13(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$14(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$15(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    move-result-object v2

    .line 181
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$16(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)V

    goto :goto_0
.end method
