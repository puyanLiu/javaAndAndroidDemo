.class public Lcom/alipay/mobile/emotion/view/EmotionsLayout;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;
.source "EmotionsLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field private static final SHOW_TAB_NUM:I = 0x6


# instance fields
.field private final chartletPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

.field private currentPackageId:Ljava/lang/String;

.field private currentPosition:I

.field private final customPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

.field private final dataChangeListner:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

.field private emoiPackageModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;"
        }
    .end annotation
.end field

.field private emoiPageModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPageModel;",
            ">;"
        }
    .end annotation
.end field

.field private emotionHorizontalScrollController:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

.field private emotionTabAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;

.field private guideRoundLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private mAdapter:Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;

.field private viewPager:Lcom/alipay/mobile/emotion/view/EmotionViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->mHandler:Landroid/os/Handler;

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->currentPosition:I

    .line 66
    const-string/jumbo v0, "basic"

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->currentPackageId:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/alipay/mobile/emotion/model/PanelInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/model/PanelInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->chartletPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    .line 72
    new-instance v0, Lcom/alipay/mobile/emotion/model/PanelInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/model/PanelInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->customPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    .line 114
    new-instance v0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;-><init>(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->dataChangeListner:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

    .line 85
    iput-object p3, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;

    .line 86
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method private InitDataManager()V
    .locals 3

    .prologue
    .line 162
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v1

    .line 164
    const/4 v2, 0x0

    .line 163
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getShowCustomEmotionList(Z)Ljava/util/List;

    move-result-object v1

    .line 164
    const/4 v2, 0x1

    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->setCustomEmotionModelVOList(Ljava/util/List;Z)V

    .line 165
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getAllEmoiPackageModelList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emoiPackageModelList:Ljava/util/List;

    .line 166
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmoiPageModelList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emoiPageModelList:Ljava/util/List;

    .line 167
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/emotion/view/EmotionsLayout;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emoiPackageModelList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$10(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emoiPageModelList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/mobile/emotion/view/EmotionsLayout;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->createPagerItemView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->currentPosition:I

    return v0
.end method

.method static synthetic access$13(Lcom/alipay/mobile/emotion/view/EmotionsLayout;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getPackageIdByPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14(Lcom/alipay/mobile/emotion/view/EmotionsLayout;I)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->refreshByIndex(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/emotion/view/EmotionsLayout;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emoiPageModelList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/emotion/view/EmotionsLayout;Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->mAdapter:Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)Lcom/alipay/mobile/emotion/view/EmotionViewPager;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->viewPager:Lcom/alipay/mobile/emotion/view/EmotionViewPager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->mAdapter:Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->initEmtionsTab()V

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->currentPackageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/emotion/view/EmotionsLayout;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getPositionByPackageId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/emotion/view/EmotionsLayout;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->changeSelectedState(ILjava/lang/String;)V

    return-void
.end method

.method private changePanelSelectedState(Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;)V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->viewPager:Lcom/alipay/mobile/emotion/view/EmotionViewPager;

    iget v1, p1, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->pageIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->setCurrentItem(IZ)V

    .line 274
    return-void
.end method

.method private changeSelectedState(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 252
    if-lez p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emotionTabAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-le p1, v0, :cond_1

    .line 254
    :cond_0
    const/4 p1, 0x1

    .line 255
    const-string/jumbo p2, "basic"

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emotionTabAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->getItem(I)Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;

    move-result-object v0

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->changeTabSelectedState(ILjava/lang/String;)V

    .line 259
    iget-object v1, v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget v1, v1, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->emotionPageNum:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->refreshGuideRoundLayout(II)V

    .line 260
    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->changePanelSelectedState(Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;)V

    .line 261
    return-void
.end method

.method private changeTabSelectedState(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emotionHorizontalScrollController:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    iget v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->currentPosition:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 265
    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->emotion_tab_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 266
    iput p1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->currentPosition:I

    .line 267
    iput-object p2, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->currentPackageId:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emotionHorizontalScrollController:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    iget v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->currentPosition:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 269
    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->emotion_tab_selected:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 270
    return-void
.end method

.method private createGotoTabModel(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;-><init>()V

    .line 230
    new-instance v1, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    invoke-direct {v1}, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 231
    iget-object v1, v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iput p1, v1, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->iconResourceId:I

    .line 232
    iget-object v1, v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iput-object p3, v1, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    .line 233
    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->viewType:I

    .line 234
    iput-object p2, v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->gotoUrl:Ljava/lang/String;

    .line 235
    return-object v0
.end method

.method private createGuideRound()Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 5

    .prologue
    .line 345
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    .line 346
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 347
    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->round_dot:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 348
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 349
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41000000    # 8.0f

    .line 348
    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    return-object v0
.end method

.method private createPagerItemView(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emoiPageModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;

    .line 355
    const/4 v1, 0x6

    iget v2, v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->faceType:I

    if-ne v1, v2, :cond_0

    .line 356
    new-instance v1, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 357
    iget-object v0, v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->basicEmotionsItems:Ljava/util/List;

    .line 356
    invoke-direct {v1, v2, v3, v0}, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/List;)V

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->setOnClickEmotionListener(Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;)V

    move-object v0, v1

    .line 373
    :goto_0
    return-object v0

    .line 360
    :cond_0
    const/4 v1, 0x5

    iget v2, v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->faceType:I

    if-ne v1, v2, :cond_1

    .line 361
    new-instance v1, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;-><init>(Landroid/content/Context;)V

    .line 362
    iget-object v2, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->viewPager:Lcom/alipay/mobile/emotion/view/EmotionViewPager;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->setInterceptableView(Lcom/alipay/mobile/emotion/widget/Interceptable;)V

    .line 363
    iget-object v0, v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->chartletEmotionsItems:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->setEmotionItems(Ljava/util/List;)V

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->setOnClickEmotionListener(Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;)V

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->customPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->initEmotionPanel(Lcom/alipay/mobile/emotion/model/PanelInfo;)V

    move-object v0, v1

    .line 366
    goto :goto_0

    .line 368
    :cond_1
    new-instance v1, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;-><init>(Landroid/content/Context;)V

    .line 369
    iget-object v2, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->viewPager:Lcom/alipay/mobile/emotion/view/EmotionViewPager;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->setInterceptableView(Lcom/alipay/mobile/emotion/widget/Interceptable;)V

    .line 370
    iget-object v0, v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->chartletEmotionsItems:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->setEmotionItems(Ljava/util/List;)V

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->setOnClickEmotionListener(Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;)V

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->chartletPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->initEmotionPanel(Lcom/alipay/mobile/emotion/model/PanelInfo;)V

    move-object v0, v1

    .line 373
    goto :goto_0
.end method

.method private getPackageIdByPosition(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emotionTabAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->getItem(I)Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    if-eqz v1, :cond_0

    .line 156
    iget-object v0, v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPositionByPackageId(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 136
    .line 137
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return v1

    .line 140
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emotionTabAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;

    invoke-virtual {v2}, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    move v0, v1

    :cond_1
    move v1, v0

    .line 149
    goto :goto_0

    .line 142
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emotionTabAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->getItem(I)Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    if-eqz v3, :cond_3

    .line 144
    iget-object v2, v2, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v2, v2, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initEmtionsTab()V
    .locals 5

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emoiPackageModelList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->makeEmotionTabModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 184
    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->icon_setting_emotion:I

    .line 185
    const-string/jumbo v2, "alipays://platformapi/startapp?appId=20000999&path=manager"

    const-string/jumbo v3, "manager"

    .line 184
    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->createGotoTabModel(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    const/4 v1, 0x0

    sget v2, Lcom/alipay/android/phone/emotion/R$drawable;->icon_emotion_store:I

    const-string/jumbo v3, "alipays://platformapi/startapp?appId=20000999&path=store"

    .line 188
    const-string/jumbo v4, "store"

    .line 186
    invoke-direct {p0, v2, v3, v4}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->createGotoTabModel(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 189
    new-instance v1, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emotionTabAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emotionTabAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;

    new-instance v1, Lcom/alipay/mobile/emotion/view/EmotionsLayout$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$2;-><init>(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->setOnItemClickListener(Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$OnItemClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emotionHorizontalScrollController:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emotionTabAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 217
    return-void
.end method

.method private initPanelInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->chartletPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42ac0000    # 86.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnHeight:I

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->chartletPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->chartletPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    iget v1, v1, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnHeight:I

    iput v1, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnWidth:I

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->chartletPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    iput v3, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewNumColumns:I

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->customPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnHeight:I

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->customPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->customPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    iget v1, v1, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnHeight:I

    iput v1, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnWidth:I

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->customPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    iput v3, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewNumColumns:I

    .line 112
    return-void
.end method

.method private initViewPager()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/view/EmotionViewPager;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->viewPager:Lcom/alipay/mobile/emotion/view/EmotionViewPager;

    .line 243
    new-instance v0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;-><init>(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->mAdapter:Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->viewPager:Lcom/alipay/mobile/emotion/view/EmotionViewPager;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->mAdapter:Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->viewPager:Lcom/alipay/mobile/emotion/view/EmotionViewPager;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->viewPager:Lcom/alipay/mobile/emotion/view/EmotionViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->setOffscreenPageLimit(I)V

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->viewPager:Lcom/alipay/mobile/emotion/view/EmotionViewPager;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->setCurrentItem(I)V

    .line 248
    invoke-direct {p0, v2}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->refreshByIndex(I)V

    .line 249
    return-void
.end method

.method private refreshByIndex(I)V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emoiPageModelList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emoiPageModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;

    .line 306
    iget v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->pageNum:I

    iget v2, v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->pageIndex:I

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->refreshGuideRoundLayout(II)V

    .line 307
    iget v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->cIndex:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->currentPosition:I

    iget v2, v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->cIndex:I

    if-eq v1, v2, :cond_0

    .line 308
    :cond_2
    iget v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->cIndex:I

    iget v2, v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->cIndex:I

    invoke-direct {p0, v2}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getPackageIdByPosition(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->changeTabSelectedState(ILjava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emotionHorizontalScrollController:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    iget v0, v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->cIndex:I

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->scrollTo(I)V

    goto :goto_0
.end method

.method private refreshGuideRoundLayout(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->guideRoundLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getChildCount()I

    move-result v0

    if-ne p1, v0, :cond_3

    move v2, v1

    .line 315
    :goto_0
    if-lt v2, p1, :cond_1

    .line 337
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->guideRoundLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 342
    :goto_1
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->guideRoundLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 317
    instance-of v3, v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v3, :cond_2

    .line 318
    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 319
    sget v3, Lcom/alipay/android/phone/emotion/R$drawable;->round_dot:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 320
    if-ne v2, p2, :cond_2

    .line 321
    sget v3, Lcom/alipay/android/phone/emotion/R$drawable;->round_dot_selected:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 315
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->guideRoundLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeAllViews()V

    move v0, v1

    .line 327
    :goto_2
    if-ge v0, p1, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->createGuideRound()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v2

    .line 329
    if-ne v0, p2, :cond_4

    .line 330
    sget v3, Lcom/alipay/android/phone/emotion/R$drawable;->round_dot_selected:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 332
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 333
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 332
    invoke-virtual {v2, v3, v1, v4, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setPadding(IIII)V

    .line 334
    iget-object v3, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->guideRoundLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 340
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->guideRoundLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->currentPackageId:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/emotion/R$layout;->layout_emotion:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 92
    div-int/lit8 v3, v2, 0x6

    .line 93
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->ll_guide_round:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->guideRoundLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 94
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emotion_tab_scrollview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;

    .line 95
    sget v4, Lcom/alipay/android/phone/emotion/R$id;->emotion_tab:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 96
    new-instance v4, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    .line 97
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;-><init>(Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;Landroid/view/View;II)V

    .line 96
    iput-object v4, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emotionHorizontalScrollController:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    .line 98
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->initPanelInfo()V

    .line 99
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->InitDataManager()V

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->initEmtionsTab()V

    .line 101
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->initViewPager()V

    .line 102
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->onAttachedToWindow()V

    .line 172
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->dataChangeListner:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->registerListener(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;)V

    .line 173
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->onDetachedFromWindow()V

    .line 178
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->dataChangeListner:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->unRegisterListener(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;)V

    .line 179
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/emotion/view/EmotionsLayout$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$3;-><init>(Lcom/alipay/mobile/emotion/view/EmotionsLayout;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method

.method public setSelectedPackage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 220
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->getPositionByPackageId(Ljava/lang/String;)I

    move-result v0

    .line 224
    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->changeSelectedState(ILjava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->emotionHorizontalScrollController:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->scrollTo(I)V

    goto :goto_0
.end method
