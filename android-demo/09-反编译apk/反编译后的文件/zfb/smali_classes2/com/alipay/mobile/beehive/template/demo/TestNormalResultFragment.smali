.class public Lcom/alipay/mobile/beehive/template/demo/TestNormalResultFragment;
.super Lcom/alipay/mobile/beehive/template/fragment/BaseNormalResultFragment;
.source "TestNormalResultFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/template/fragment/BaseNormalResultFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/beehive/template/fragment/BaseNormalResultFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 18
    new-instance v0, Lcom/alipay/mobile/beehive/template/model/BaseResult;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/template/model/BaseResult;-><init>()V

    .line 19
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/beehive/template/model/BaseResult;->success:Z

    .line 20
    const-string/jumbo v1, "\u5145\u503c\u6210\u529f"

    iput-object v1, v0, Lcom/alipay/mobile/beehive/template/model/BaseResult;->mainInfo:Ljava/lang/String;

    .line 21
    const-string/jumbo v1, "\u5145\u503c\u53f7\u7801123456"

    iput-object v1, v0, Lcom/alipay/mobile/beehive/template/model/BaseResult;->secondaryInfo:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/template/demo/TestNormalResultFragment;->showResult(Lcom/alipay/mobile/beehive/template/model/BaseResult;)V

    .line 23
    return-void
.end method
