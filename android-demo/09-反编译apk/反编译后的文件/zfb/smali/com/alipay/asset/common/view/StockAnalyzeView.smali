.class public Lcom/alipay/asset/common/view/StockAnalyzeView;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;
.source "StockAnalyzeView.java"


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/StockAnalyzeView;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/StockAnalyzeView;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    const-string/jumbo v1, "-{2,}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    const-string/jumbo v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    const/4 v0, -0x1

    goto :goto_0

    .line 65
    :cond_2
    const-string/jumbo v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$layout;->i:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->J:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/StockAnalyzeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/StockAnalyzeView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 39
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->I:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/StockAnalyzeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/StockAnalyzeView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 40
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->U:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/StockAnalyzeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/StockAnalyzeView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 41
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->T:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/StockAnalyzeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/asset/common/view/StockAnalyzeView;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 42
    return-void
.end method

.method private a(Lcom/alipay/mobile/commonui/widget/APTextView;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 75
    invoke-virtual {p1, p3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/StockAnalyzeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$color;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 84
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 78
    invoke-virtual {p1, p3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/StockAnalyzeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$color;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1, p3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/StockAnalyzeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$color;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public setStockFundValue(Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisStock;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisStock;->dayProfit:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisStock;->dayProfit:Ljava/lang/String;

    .line 47
    invoke-static {v0}, Lcom/alipay/asset/common/view/StockAnalyzeView;->a(Ljava/lang/String;)I

    move-result v1

    .line 48
    iget-object v2, p0, Lcom/alipay/asset/common/view/StockAnalyzeView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-direct {p0, v2, v1, v0}, Lcom/alipay/asset/common/view/StockAnalyzeView;->a(Lcom/alipay/mobile/commonui/widget/APTextView;ILjava/lang/String;)V

    .line 50
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisStock;->totalProfit:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisStock;->totalProfit:Ljava/lang/String;

    .line 52
    invoke-static {v0}, Lcom/alipay/asset/common/view/StockAnalyzeView;->a(Ljava/lang/String;)I

    move-result v1

    .line 53
    iget-object v2, p0, Lcom/alipay/asset/common/view/StockAnalyzeView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-direct {p0, v2, v1, v0}, Lcom/alipay/asset/common/view/StockAnalyzeView;->a(Lcom/alipay/mobile/commonui/widget/APTextView;ILjava/lang/String;)V

    .line 55
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisStock;->balance:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/alipay/asset/common/view/StockAnalyzeView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisStock;->balance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_2
    return-void
.end method
