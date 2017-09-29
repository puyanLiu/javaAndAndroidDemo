.class public Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;
.super Landroid/widget/LinearLayout;
.source "XListViewHeader.java"


# static fields
.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_READY:I = 0x1

.field public static final STATE_REFRESHING:I = 0x2


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->e:I

    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->e:I

    .line 44
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0xb4

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 49
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 50
    const/4 v0, -0x1

    const/4 v6, 0x0

    .line 49
    invoke-direct {v5, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 52
    sget v6, Lcom/alipay/mobile/socialsdk/R$layout;->xlistview_header:I

    const/4 v7, 0x0

    .line 51
    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->a:Landroid/widget/LinearLayout;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v5}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->setGravity(I)V

    .line 56
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->xlistview_header_arrow:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->b:Landroid/widget/ImageView;

    .line 57
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->xlistview_header_hint_textview:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->d:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->xlistview_header_progressbar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->c:Landroid/widget/ProgressBar;

    .line 60
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    .line 62
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 60
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->f:Landroid/view/animation/Animation;

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 65
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    .line 67
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 65
    iput-object v5, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->g:Landroid/view/animation/Animation;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 70
    return-void
.end method


# virtual methods
.method public getVisiableHeight()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public setState(I)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->e:I

    if-ne p1, v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 76
    :cond_0
    if-ne p1, v3, :cond_2

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 85
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 108
    :cond_1
    :goto_2
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->e:I

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 87
    :pswitch_0
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->e:I

    if-ne v0, v2, :cond_3

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->e:I

    if-ne v0, v3, :cond_4

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->d:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->xlistview_header_hint_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 96
    :pswitch_1
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->e:I

    if-eq v0, v2, :cond_1

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->d:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->xlistview_header_hint_ready:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->d:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->xlistview_header_hint_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVisiableHeight(I)V
    .locals 2

    .prologue
    .line 112
    if-gez p1, :cond_0

    .line 113
    const/4 p1, 0x0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->a:Landroid/widget/LinearLayout;

    .line 115
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 114
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 117
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method
