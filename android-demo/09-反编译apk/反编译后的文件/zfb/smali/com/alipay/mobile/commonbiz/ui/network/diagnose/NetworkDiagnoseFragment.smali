.class public Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;
.super Landroid/support/v4/app/Fragment;
.source "NetworkDiagnoseFragment.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseListener;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->g:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;->startDiagnose()V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->d:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->network_diagnose_start:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->diagnose_img:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->b:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->network_diagnose_process_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->b:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$string;->network_diagnose_thanks:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->d:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->d:Landroid/widget/Button;

    if-eqz p1, :cond_0

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$string;->network_diagnose_finish:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->d:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/c;-><init>(Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$string;->network_diagnose_success:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0xaa

    const/16 v2, 0xee

    invoke-static {v3, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_3

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$drawable;->network_diagnose_success:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$dimen;->diagnose_result_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$string;->network_diagnose_retry:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$string;->network_diagnose_fail:I

    goto :goto_1

    :cond_2
    const/16 v0, 0xff

    invoke-static {v0, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_2

    :cond_3
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$drawable;->network_diagnose_fail:I

    goto :goto_3
.end method

.method static synthetic b(Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->diagnose_progressbar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->a:Landroid/widget/ProgressBar;

    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->diagnose_step_info:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->c:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->start_network_diagnose:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->d:Landroid/widget/Button;

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->diagnose_result:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->e:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->network_diagnose_title:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->b:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->network_diagnose_tips:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->f:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->d:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/a;-><init>(Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseActivity;->a()Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->g:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->g:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;->addDiagnoseListener(Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseListener;)V

    .line 34
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$layout;->network_diagnose_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->g:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;->cancel()V

    .line 65
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->g:Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;->removeDiagnoseListener(Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseListener;)V

    .line 41
    return-void
.end method

.method public updateProgress(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/b;-><init>(Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method
