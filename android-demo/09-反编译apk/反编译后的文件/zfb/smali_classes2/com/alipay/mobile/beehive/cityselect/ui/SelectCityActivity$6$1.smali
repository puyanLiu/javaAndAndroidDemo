.class Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$1;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;

.field private final synthetic val$location:Lcom/alipay/mobile/common/lbs/LBSLocation;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$1;->val$location:Lcom/alipay/mobile/common/lbs/LBSLocation;

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->access$0(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;)Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$10(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setClickable(Z)V

    .line 674
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$1;->val$location:Lcom/alipay/mobile/common/lbs/LBSLocation;

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->access$0(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;)Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$10(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->access$0(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;)Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 676
    sget v2, Lcom/alipay/mobile/beehive/R$string;->lbs_fail:I

    .line 675
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->access$0(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;)Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$1;->val$location:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$12(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    .line 679
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$1;->val$location:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentAdCode:Ljava/lang/String;

    .line 680
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6$1;->this$1:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;->access$0(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;)Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->access$10(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
