.class public Lcom/alipay/mobile/beehive/template/fragment/BaseNormalResultFragment;
.super Lcom/alipay/mobile/beehive/template/fragment/BaseResultFragment;
.source "BaseNormalResultFragment.java"


# instance fields
.field private mainInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private resultIconView:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private secondaryInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;


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
    .line 25
    sget v0, Lcom/alipay/mobile/beehive/R$layout;->normal_result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 26
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/beehive/template/fragment/BaseResultFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/alipay/mobile/beehive/R$id;->main_info_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseNormalResultFragment;->mainInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 33
    sget v0, Lcom/alipay/mobile/beehive/R$id;->secondary_info_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseNormalResultFragment;->secondaryInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 34
    sget v0, Lcom/alipay/mobile/beehive/R$id;->result_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseNormalResultFragment;->resultIconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 35
    return-void
.end method

.method public showResult(Lcom/alipay/mobile/beehive/template/model/BaseResult;)V
    .locals 2

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget-boolean v0, p1, Lcom/alipay/mobile/beehive/template/model/BaseResult;->success:Z

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseNormalResultFragment;->resultIconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->info_ok_large:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 45
    :goto_0
    iget-object v0, p1, Lcom/alipay/mobile/beehive/template/model/BaseResult;->mainInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p1, Lcom/alipay/mobile/beehive/template/model/BaseResult;->secondaryInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseNormalResultFragment;->mainInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p1, Lcom/alipay/mobile/beehive/template/model/BaseResult;->mainInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseNormalResultFragment;->secondaryInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 56
    :cond_0
    :goto_1
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseNormalResultFragment;->resultIconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->info_fail_large:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseNormalResultFragment;->mainInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p1, Lcom/alipay/mobile/beehive/template/model/BaseResult;->mainInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseNormalResultFragment;->secondaryInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p1, Lcom/alipay/mobile/beehive/template/model/BaseResult;->secondaryInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/fragment/BaseNormalResultFragment;->secondaryInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_1
.end method
