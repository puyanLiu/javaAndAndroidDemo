.class public Lcom/alipay/mobile/beehive/template/demo/TestTabFragment;
.super Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;
.source "TestTabFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/template/fragment/BaseTabFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/alipay/mobile/beehive/template/adapter/BaseFragmentPagerAdapter;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v1, Lcom/alipay/mobile/beehive/template/demo/TestFlowResultFragment;

    invoke-direct {v1}, Lcom/alipay/mobile/beehive/template/demo/TestFlowResultFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcom/alipay/mobile/beehive/template/demo/TestNormalResultFragment;

    invoke-direct {v1}, Lcom/alipay/mobile/beehive/template/demo/TestNormalResultFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcom/alipay/mobile/beehive/template/adapter/BaseFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/demo/TestTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/beehive/template/adapter/BaseFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    return-object v1
.end method

.method public getTabNameArray()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u8bdd\u8d39"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u6d41\u91cf"

    aput-object v2, v0, v1

    return-object v0
.end method
