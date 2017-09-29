.class public Lcom/alipay/mobile/beehive/template/view/FlowView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "FlowView.java"


# instance fields
.field private flowLastIconView:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private flowNormalIconView:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private mainInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private secondaryInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private thirdInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/template/view/FlowView;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/template/view/FlowView;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/template/view/FlowView;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$layout;->flow:I

    .line 42
    const/4 v2, 0x1

    .line 41
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    sget v0, Lcom/alipay/mobile/beehive/R$id;->flow_normal_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/template/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/view/FlowView;->flowNormalIconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 44
    sget v0, Lcom/alipay/mobile/beehive/R$id;->flow_last_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/template/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/view/FlowView;->flowLastIconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 45
    sget v0, Lcom/alipay/mobile/beehive/R$id;->flow_main_info:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/template/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/view/FlowView;->mainInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 46
    sget v0, Lcom/alipay/mobile/beehive/R$id;->flow_secondary_info:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/template/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/view/FlowView;->secondaryInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 47
    return-void
.end method


# virtual methods
.method public showFlow(Lcom/alipay/mobile/beehive/template/model/ResultFlow;ZZ)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 50
    if-eqz p1, :cond_0

    .line 51
    if-eqz p3, :cond_1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/FlowView;->flowLastIconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/FlowView;->flowNormalIconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/FlowView;->flowLastIconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget v1, p1, Lcom/alipay/mobile/beehive/template/model/ResultFlow;->iconId:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/FlowView;->mainInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p1, Lcom/alipay/mobile/beehive/template/model/ResultFlow;->mainInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/FlowView;->secondaryInfoTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p1, Lcom/alipay/mobile/beehive/template/model/ResultFlow;->secondaryInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/FlowView;->flowNormalIconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/FlowView;->flowLastIconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/FlowView;->flowNormalIconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget v1, p1, Lcom/alipay/mobile/beehive/template/model/ResultFlow;->iconId:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_0
.end method
