.class Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$4;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$4;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 414
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$4;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    sget-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentProvince:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    sget-object v3, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentAdCode:Ljava/lang/String;

    .line 416
    sget-object v4, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCityPinyin:Ljava/lang/String;

    .line 415
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$11(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    return-void
.end method
