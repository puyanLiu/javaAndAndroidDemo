.class Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$2;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$2;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$2;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->access$0(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;)Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$10(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setClickable(Z)V

    .line 692
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$2;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->access$0(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;)Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$10(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$2;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->access$0(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;)Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 693
    sget v2, Lcom/alipay/mobile/beehive/R$string;->lbs_fail:I

    .line 692
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    return-void
.end method
