.class public Lcom/alipay/asset/common/view/WealthSectionView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "WealthSectionView.java"


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private b:Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;

.field private c:Lcom/alipay/android/widgets/asset/model/WealthHomeSection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/WealthSectionView;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/WealthSectionView;->a(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/WealthSectionView;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$layout;->m:I

    .line 51
    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->ai:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 53
    return-void
.end method


# virtual methods
.method public setSection(Lcom/alipay/android/widgets/asset/model/WealthHomeSection;Z)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthSectionView;->c:Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthSectionView;->c:Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 58
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthSectionView;->c:Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_a

    .line 59
    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthSectionView;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getChildCount()I

    move-result v1

    iget-object v3, p0, Lcom/alipay/asset/common/view/WealthSectionView;->c:Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-virtual {v3}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    if-ne v1, v3, :cond_a

    move v4, v2

    .line 62
    :goto_0
    if-eqz v4, :cond_0

    .line 63
    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthSectionView;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeAllViews()V

    .line 65
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "WealthSectionView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "removeAllViews:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/alipay/asset/common/view/WealthSectionView;->c:Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    .line 67
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 68
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_7

    .line 70
    if-eqz v4, :cond_3

    .line 71
    new-instance v0, Lcom/alipay/asset/common/view/WealthSingleWidgetView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthSectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/asset/common/view/WealthSingleWidgetView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .line 75
    :goto_1
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/asset/common/view/WealthSingleWidgetView;->setWealthHomeModule(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Z)V

    .line 76
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->b:Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->b:Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;

    invoke-interface {v0, v1}, Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;->a(Landroid/view/View;)V

    .line 79
    :cond_1
    if-eqz v4, :cond_2

    .line 80
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    .line 104
    :cond_2
    :goto_2
    return-void

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthSingleWidgetView;

    move-object v1, v0

    goto :goto_1

    .line 85
    :cond_4
    if-eqz v4, :cond_8

    .line 86
    new-instance v0, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthSectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    .line 90
    :goto_3
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    .line 91
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 92
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    .line 93
    :goto_4
    invoke-virtual {v3, v0, v1, p2}, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->setWidgetModules(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Z)V

    .line 94
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->b:Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->b:Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;

    invoke-interface {v0, v3}, Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;->a(Landroid/view/View;)V

    .line 97
    :cond_5
    if-eqz v4, :cond_6

    .line 98
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    .line 100
    :cond_6
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    .line 83
    :cond_7
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    goto :goto_2

    .line 88
    :cond_8
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    div-int/lit8 v1, v2, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;

    move-object v3, v0

    goto :goto_3

    .line 92
    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    move v4, v0

    goto/16 :goto_0
.end method

.method public setWealthWidgetViewUpdateListener(Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/asset/common/view/WealthSectionView;->b:Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;

    .line 47
    return-void
.end method
