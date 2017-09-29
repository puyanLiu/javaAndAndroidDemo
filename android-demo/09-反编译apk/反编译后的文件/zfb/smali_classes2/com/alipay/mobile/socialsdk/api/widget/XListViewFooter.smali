.class public Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;
.super Landroid/widget/LinearLayout;
.source "XListViewFooter.java"


# static fields
.field public static final STATE_LOADING:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_READY:I = 0x1


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->a(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->a:Landroid/content/Context;

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->xlistview_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 98
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->addView(Landroid/view/View;)V

    .line 99
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->xlistview_footer_content:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->b:Landroid/view/View;

    .line 102
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->xlistview_footer_progressbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->c:Landroid/view/View;

    .line 103
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->xlistview_footer_hint_textview:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->d:Landroid/widget/TextView;

    .line 104
    return-void
.end method


# virtual methods
.method public getBottomMargin()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 82
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    return-void
.end method

.method public loading()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    return-void
.end method

.method public normal()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public setBottomMargin(I)V
    .locals 2

    .prologue
    .line 49
    if-gez p1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->d:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->xlistview_footer_hint_ready:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->d:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->xlistview_footer_hint_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 92
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method
