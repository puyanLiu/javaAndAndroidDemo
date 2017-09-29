.class Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment$2;
.super Ljava/lang/Object;
.source "BaseTabFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment$2;->this$0:Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment$2;->this$0:Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;->access$0(Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;)Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->setCurrentSelTab(I)V

    .line 50
    return-void
.end method
