.class public Lcom/alipay/mobile/beehive/template/fragment/BaseFlowResultFragment;
.super Lcom/alipay/mobile/beehive/template/fragment/BaseResultFragment;
.source "BaseFlowResultFragment.java"


# instance fields
.field private tipBoxContainer:Lcom/alipay/mobile/commonui/widget/APLinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/template/fragment/BaseResultFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 24
    sget v0, Lcom/alipay/mobile/beehive/R$layout;->flow_result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/beehive/template/fragment/BaseResultFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    sget v0, Lcom/alipay/mobile/beehive/R$id;->tip_box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseFlowResultFragment;->tipBoxContainer:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 32
    return-void
.end method

.method public showResult(Lcom/alipay/mobile/beehive/template/model/BaseResult;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseFlowResultFragment;->tipBoxContainer:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeAllViews()V

    .line 37
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/beehive/template/model/BaseResult;->resultFlows:Ljava/util/List;

    if-eqz v0, :cond_0

    move v1, v2

    .line 38
    :goto_0
    iget-object v0, p1, Lcom/alipay/mobile/beehive/template/model/BaseResult;->resultFlows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 45
    :cond_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/beehive/template/model/BaseResult;->resultFlows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/template/model/ResultFlow;

    .line 40
    new-instance v6, Lcom/alipay/mobile/beehive/template/view/FlowView;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/fragment/BaseFlowResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/alipay/mobile/beehive/template/view/FlowView;-><init>(Landroid/content/Context;)V

    .line 41
    if-nez v1, :cond_2

    move v3, v4

    :goto_1
    iget-object v5, p1, Lcom/alipay/mobile/beehive/template/model/BaseResult;->resultFlows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_3

    move v5, v4

    :goto_2
    invoke-virtual {v6, v0, v3, v5}, Lcom/alipay/mobile/beehive/template/view/FlowView;->showFlow(Lcom/alipay/mobile/beehive/template/model/ResultFlow;ZZ)V

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseFlowResultFragment;->tipBoxContainer:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    .line 38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 41
    goto :goto_1

    :cond_3
    move v5, v2

    goto :goto_2
.end method
