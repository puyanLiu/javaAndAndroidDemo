.class public Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;
.super Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;
.source "BasicEmotionPanel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/emotion/view/AbsEmotionPanel",
        "<",
        "Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_NUMBER:I = 0x7

.field protected static final TAG:Ljava/lang/String;

.field private static sItemHeight:I

.field private static sItemWidth:I


# instance fields
.field private emotionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final imgPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 25
    const-class v0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->TAG:Ljava/lang/String;

    .line 26
    sput v1, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->sItemWidth:I

    .line 27
    sput v1, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->sItemHeight:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0, v0}, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/List;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/List;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v1, 0x423ecccd    # 47.7f

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget v0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->sItemWidth:I

    if-gtz v0, :cond_0

    .line 46
    invoke-static {p1, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->sItemWidth:I

    .line 49
    :cond_0
    sget v0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->sItemHeight:I

    if-gtz v0, :cond_1

    .line 50
    invoke-static {p1, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->sItemHeight:I

    .line 52
    :cond_1
    iput-object p3, p0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->emotionItems:Ljava/util/List;

    .line 53
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->imgPadding:I

    .line 54
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->initView(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->emotionItems:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected getEmotionItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->emotionItems:Ljava/util/List;

    return-object v0
.end method

.method protected getGridItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel$InnerOnItemClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel$InnerOnItemClickListener;-><init>(Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;Lcom/alipay/mobile/emotion/view/BasicEmotionPanel$InnerOnItemClickListener;)V

    return-object v0
.end method

.method protected getGridItemView(IIILandroid/view/View;Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    if-nez p4, :cond_0

    .line 77
    new-instance p4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    iget v0, p0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->imgPadding:I

    iget v1, p0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->imgPadding:I

    iget v2, p0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->imgPadding:I

    iget v3, p0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->imgPadding:I

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 83
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 84
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 85
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 89
    if-nez p5, :cond_2

    .line 90
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p3, :cond_1

    .line 91
    :try_start_0
    sget v0, Lcom/alipay/android/phone/emotion/R$drawable;->emotion_delete:I

    .line 98
    :goto_0
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 104
    :goto_2
    return-object p4

    .line 80
    :cond_0
    check-cast p4, Landroid/widget/ImageView;

    goto :goto_2

    .line 93
    :cond_1
    const v0, 0x106000d

    goto :goto_0

    .line 96
    :cond_2
    :try_start_1
    invoke-virtual {p5}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->resid()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge synthetic getGridItemView(IIILandroid/view/View;Ljava/lang/Object;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1
    move-object v5, p5

    check-cast v5, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->getGridItemView(IIILandroid/view/View;Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getGridViewColumnHeight()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->sItemHeight:I

    return v0
.end method

.method protected getGridViewColumnWidth()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->sItemWidth:I

    return v0
.end method

.method protected getGridViewMargin()I
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method protected getGridViewNumColumns()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x7

    return v0
.end method

.method protected getGridViewVerticalSpacing()I
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method protected getOnItemPressingListener()Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasLongPressing()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method
