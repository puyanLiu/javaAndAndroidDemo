.class Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$3;
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
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 391
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$10(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 393
    sget v2, Lcom/alipay/mobile/beehive/R$string;->cityselect_lbs_on_location:I

    .line 392
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$10(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setClickable(Z)V

    .line 395
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->startLocation()V

    .line 400
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    sget-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentProvince:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    sget-object v3, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentAdCode:Ljava/lang/String;

    .line 398
    sget-object v4, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCityPinyin:Ljava/lang/String;

    .line 397
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$11(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
