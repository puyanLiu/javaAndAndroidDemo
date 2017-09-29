.class Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment$1;
.super Ljava/lang/Object;
.source "BaseTabFragment.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APSwitchTab$TabSwitchListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment$1;->this$0:Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabClick(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment$1;->this$0:Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;->access$0(Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;)Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->selectTabAndAdjustLine(I)V

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment$1;->this$0:Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;->access$1(Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 38
    return-void
.end method
