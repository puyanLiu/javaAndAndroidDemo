.class public Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "AssetAnalyzeActivity.java"

# interfaces
.implements Lcom/alipay/android/widgets/asset/listener/PayResultListener;


# instance fields
.field private a:Lcom/alipay/android/widgets/asset/e;

.field private b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

.field private c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private e:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private f:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private g:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private h:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private i:Lcom/alipay/asset/common/view/StockAnalyzeView;

.field private j:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private k:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private l:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private m:Landroid/view/View;

.field private n:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private o:Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;

.field private p:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->l:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->p:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;Z)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;Z)V

    return-void
.end method

.method private a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;Z)V
    .locals 13

    .prologue
    const/high16 v12, 0x43b40000    # 360.0f

    const/4 v11, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 308
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v5, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->items:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;->b()V

    move v1, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_7

    iget-object v6, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;

    invoke-virtual {v6}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a()I

    move-result v7

    move v5, v4

    move v1, v3

    :goto_1
    if-lt v1, v7, :cond_9

    move v2, v3

    move v0, v4

    move v1, v4

    :goto_2
    if-lt v2, v7, :cond_a

    sub-float v1, v0, v1

    div-float v8, v1, v0

    move v0, v3

    move v1, v3

    move v2, v4

    :goto_3
    if-lt v1, v7, :cond_c

    move v1, v3

    :goto_4
    if-lt v1, v7, :cond_f

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-virtual {v0, v10, v11}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->initRender(FI)V

    .line 310
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->totalAssets:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->totalAssets:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->totalAssetsDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->totalAssetsDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->stockAsset:Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisStock;

    if-eqz v0, :cond_11

    .line 317
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->i:Lcom/alipay/asset/common/view/StockAnalyzeView;

    invoke-virtual {v0, v3}, Lcom/alipay/asset/common/view/StockAnalyzeView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->i:Lcom/alipay/asset/common/view/StockAnalyzeView;

    iget-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->stockAsset:Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisStock;

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/StockAnalyzeView;->setStockFundValue(Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisStock;)V

    .line 322
    :goto_5
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->financialAssets:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->o:Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;

    iget-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->financialAssets:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->o:Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$dimen;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->setAutoTextSize(I)V

    .line 326
    :cond_3
    iget-object v6, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->items:Ljava/util/List;

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->removeAllViews()V

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$array;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    move v4, v3

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lt v4, v1, :cond_12

    .line 327
    :cond_4
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->hasOpen:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->t:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/android/phone/wealth/home/R$drawable;->f:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$color;->e:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->effectEndTime:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :cond_5
    :goto_7
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 330
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->b(Ljava/lang/String;)I

    move-result v1

    .line 331
    const-string/jumbo v2, "AssetAnalyzeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "showNum:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    if-nez p2, :cond_6

    iget-object v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    if-eqz v2, :cond_6

    .line 333
    iget-object v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    iget-boolean v2, v2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->hasOpen:Z

    if-nez v2, :cond_6

    .line 334
    iget-object v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    iget v2, v2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->showGuide:I

    if-eqz v2, :cond_6

    .line 335
    iget-object v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    iget v2, v2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->showGuide:I

    if-ne v1, v2, :cond_18

    .line 359
    :cond_6
    :goto_8
    return-void

    .line 309
    :cond_7
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisItem;

    iget v2, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisItem;->percent:F

    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_8

    new-instance v6, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    invoke-direct {v6}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->a(Ljava/lang/String;)V

    iget v2, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisItem;->percent:F

    invoke-virtual {v6, v2}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->a(F)V

    const-string/jumbo v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    :try_start_0
    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisItem;->pieColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_9
    invoke-virtual {v6, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;

    invoke-virtual {v0, v6}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;->a(Lcom/alipay/android/widgets/asset/piechart/PieChartSector;)V

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/alipay/android/phone/wealth/home/R$array;->c:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_1a

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/wealth/home/R$array;->c:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_9

    :cond_9
    invoke-virtual {v6, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v0

    add-float/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    move v5, v0

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v6, v2}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v8

    div-float/2addr v8, v5

    mul-float/2addr v8, v12

    sget v9, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a:F

    cmpg-float v9, v8, v9

    if-gez v9, :cond_b

    sget v9, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a:F

    sub-float v8, v9, v8

    add-float/2addr v1, v8

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_b
    add-float/2addr v0, v8

    goto :goto_a

    :cond_c
    invoke-virtual {v6, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v4

    div-float/2addr v4, v5

    mul-float/2addr v4, v12

    sget v9, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a:F

    cmpg-float v9, v4, v9

    if-gez v9, :cond_e

    invoke-virtual {v6, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v4

    sget v9, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a:F

    invoke-virtual {v4, v9}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->a(F)V

    :goto_b
    invoke-virtual {v6, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_d

    invoke-virtual {v6, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v0

    move v2, v0

    move v0, v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v6, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v9

    mul-float/2addr v4, v8

    invoke-virtual {v9, v4}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->a(F)V

    goto :goto_b

    :cond_f
    if-ne v1, v0, :cond_10

    invoke-virtual {v6, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v4

    int-to-float v5, v7

    sub-float v5, v2, v5

    add-float/2addr v5, v10

    invoke-virtual {v4, v5}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->a(F)V

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_10
    invoke-virtual {v6, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v4

    invoke-virtual {v6, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v5

    add-float/2addr v5, v10

    invoke-virtual {v4, v5}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->a(F)V

    goto :goto_c

    .line 320
    :cond_11
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->i:Lcom/alipay/asset/common/view/StockAnalyzeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/StockAnalyzeView;->setVisibility(I)V

    goto/16 :goto_5

    .line 326
    :cond_12
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisItem;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, Lcom/alipay/android/phone/wealth/home/R$layout;->d:I

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/view/View;->setId(I)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v5, -0x2

    invoke-direct {v9, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-lez v4, :cond_13

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/alipay/android/phone/wealth/home/R$dimen;->c:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v9, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_13
    const/16 v2, 0xe

    const/4 v5, -0x1

    invoke-virtual {v9, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-lez v4, :cond_14

    const/4 v2, 0x3

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v7, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v9, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x5

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v7, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v9, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_14
    iget-object v2, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisItem;->name:Ljava/lang/String;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v11, :cond_19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "\u3000"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    :goto_d
    sget v2, Lcom/alipay/android/phone/wealth/home/R$id;->h:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisItem;->value:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget v2, Lcom/alipay/android/phone/wealth/home/R$id;->f:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v5, Lcom/alipay/android/phone/wealth/home/R$string;->k:I

    invoke-virtual {p0, v5}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e
    :try_start_1
    sget v2, Lcom/alipay/android/phone/wealth/home/R$id;->g:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisItem;->color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_15
    :goto_f
    invoke-virtual {v0, v8, v9}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_6

    :cond_16
    sget v2, Lcom/alipay/android/phone/wealth/home/R$id;->f:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v5, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthAnalysisItem;->value:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :catch_1
    move-exception v1

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$array;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v4, v1, :cond_15

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$array;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->g:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_f

    .line 327
    :cond_17
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->q:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/android/phone/wealth/home/R$drawable;->j:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alipay/android/phone/wealth/home/R$color;->d:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->s:I

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->compensation:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v3, 0x1

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->payAmount:Ljava/lang/String;

    aput-object v0, v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 338
    :cond_18
    iget-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    iget v1, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->showGuide:I

    .line 339
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Ljava/lang/String;I)V

    .line 340
    new-instance v0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    invoke-direct {v0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;-><init>()V

    .line 341
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 342
    const-string/jumbo v2, "title"

    iget-object v3, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    iget-object v3, v3, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v2, "bg_image"

    iget-object v3, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    iget-object v3, v3, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->bkPicUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string/jumbo v2, "compensation"

    .line 345
    iget-object v3, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    iget-object v3, v3, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->compensation:Ljava/lang/String;

    .line 344
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string/jumbo v2, "pay_amount"

    iget-object v3, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    iget-object v3, v3, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->payAmount:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v2, "protocol_url"

    .line 348
    iget-object v3, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    iget-object v3, v3, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->protocolUrl:Ljava/lang/String;

    .line 347
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 350
    invoke-virtual {v0, p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->a(Lcom/alipay/android/widgets/asset/listener/PayResultListener;)V

    .line 352
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "insurance"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 356
    :goto_10
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/LogAgentUtil;->c()V

    goto/16 :goto_8

    .line 354
    :catch_2
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetAnalyzeActivity"

    const-string/jumbo v2, "Exception occurs in updateUI"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_19
    move-object v5, v2

    goto/16 :goto_d

    :cond_1a
    move v0, v2

    goto/16 :goto_9
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "st"

    const-string/jumbo v2, "YES"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sb"

    const-string/jumbo v2, "NO"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->p:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)Lcom/alipay/android/widgets/asset/piechart/PieChart;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .prologue
    .line 377
    if-eqz p1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->a:Lcom/alipay/android/widgets/asset/e;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "refresh"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/e;->start([Ljava/lang/Object;)V

    .line 380
    :cond_0
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    sget v0, Lcom/alipay/android/phone/wealth/home/R$layout;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->setContentView(I)V

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->m:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->m:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->Y:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->l:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->l:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v3, Lcom/alipay/android/phone/wealth/home/R$string;->g:I

    invoke-virtual {p0, v3}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->w:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->q:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->x:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->k:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->k:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    new-instance v3, Lcom/alipay/android/widgets/asset/b;

    invoke-direct {v3, p0}, Lcom/alipay/android/widgets/asset/b;-><init>(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->F:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->n:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->n:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    new-instance v3, Lcom/alipay/android/widgets/asset/c;

    invoke-direct {v3, p0}, Lcom/alipay/android/widgets/asset/c;-><init>(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->ac:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->ab:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->S:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/StockAnalyzeView;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->i:Lcom/alipay/asset/common/view/StockAnalyzeView;

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->o:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->o:Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v0, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;

    invoke-direct {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->H:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/piechart/PieChart;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v3}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->setRotateSpeed(F)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;

    invoke-virtual {v0, v3}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->setAdapter(Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    new-instance v3, Lcom/alipay/android/widgets/asset/d;

    invoke-direct {v3, p0}, Lcom/alipay/android/widgets/asset/d;-><init>(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)V

    invoke-virtual {v0, v3}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->setOnRenderFinishListener(Lcom/alipay/android/widgets/asset/piechart/listener/OnRenderFinishListener;)V

    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 84
    const-string/jumbo v0, "wealth_electronic_voucher"

    invoke-static {v0}, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->l:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 87
    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->l:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v4, Lcom/alipay/android/phone/wealth/home/R$string;->m:I

    invoke-virtual {p0, v4}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->l:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v4, Lcom/alipay/android/widgets/asset/a;

    invoke-direct {v4, p0, v0}, Lcom/alipay/android/widgets/asset/a;-><init>(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->m:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    .line 96
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->p:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    .line 101
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->p:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->p:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;Z)V

    move v0, v1

    .line 106
    :goto_0
    new-instance v2, Lcom/alipay/android/widgets/asset/e;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/widgets/asset/e;-><init>(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;Z)V

    iput-object v2, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->a:Lcom/alipay/android/widgets/asset/e;

    .line 107
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->a:Lcom/alipay/android/widgets/asset/e;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/e;->start([Ljava/lang/Object;)V

    .line 108
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
