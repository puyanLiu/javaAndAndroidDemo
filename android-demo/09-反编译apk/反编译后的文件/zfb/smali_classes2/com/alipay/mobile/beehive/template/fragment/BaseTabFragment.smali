.class public abstract Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseTabFragment.java"


# instance fields
.field private switchTab:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;)Lcom/alipay/mobile/commonui/widget/APSwitchTab;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;->switchTab:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public abstract getAdapter()Lcom/alipay/mobile/beehive/template/adapter/BaseFragmentPagerAdapter;
.end method

.method public abstract getTabNameArray()[Ljava/lang/String;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 24
    sget v0, Lcom/alipay/mobile/beehive/R$layout;->tab_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    sget v0, Lcom/alipay/mobile/beehive/R$id;->tab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;->switchTab:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;->switchTab:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;->getTabNameArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->resetTabView([Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;->switchTab:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    new-instance v1, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment$1;-><init>(Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->setTabSwitchListener(Lcom/alipay/mobile/commonui/widget/APSwitchTab$TabSwitchListener;)V

    .line 40
    sget v0, Lcom/alipay/mobile/beehive/R$id;->pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment$2;-><init>(Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;->getAdapter()Lcom/alipay/mobile/beehive/template/adapter/BaseFragmentPagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 58
    return-void
.end method
