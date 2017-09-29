.class public Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;
.super Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;
.source "ChartletEmotionPanel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/emotion/view/AbsEmotionPanel",
        "<",
        "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "ChartletEmotionPanel"


# instance fields
.field private isShowShortCut:Z

.field private mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

.field private mChatletEmotionTips:Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

.field private mEmotionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemPressingListener:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

.field private mPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mEmotionItems:Ljava/util/List;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->isShowShortCut:Z

    .line 65
    new-instance v0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$1;-><init>(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 159
    new-instance v0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;-><init>(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mOnItemPressingListener:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mEmotionItems:Ljava/util/List;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->isShowShortCut:Z

    .line 65
    new-instance v0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$1;-><init>(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 159
    new-instance v0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;-><init>(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mOnItemPressingListener:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

    .line 40
    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mEmotionItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;I)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->initChatletEmotionTips(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mChatletEmotionTips:Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    return-object v0
.end method

.method private getItemView(IILandroid/view/View;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;Z)Landroid/view/View;
    .locals 4

    .prologue
    .line 103
    if-nez p3, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 105
    sget v1, Lcom/alipay/android/phone/emotion/R$layout;->charlet_emotion_item:I

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 107
    :cond_0
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->image:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 108
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->short_cut:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 109
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v3, Lcom/alipay/android/phone/emotion/R$layout;->emotion_panel:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    .line 110
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    :goto_0
    return-object p3

    .line 114
    :cond_1
    if-nez p4, :cond_3

    .line 115
    const v2, 0x106000d

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 116
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->isShowShortCut:Z

    if-nez v0, :cond_2

    .line 122
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_2
    invoke-virtual {p3, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_3
    invoke-static {p4, p5, v0}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->execute(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;Landroid/widget/ImageView;)V

    .line 119
    iget-object v0, p4, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->shortCut:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private initChatletEmotionTips(I)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mChatletEmotionTips:Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mChatletEmotionTips:Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    .line 154
    :cond_0
    if-lez p1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mChatletEmotionTips:Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->initChatletEmotionTips(I)V

    .line 157
    :cond_1
    return-void
.end method


# virtual methods
.method protected getChangeBGHandler()Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$3;-><init>(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    return-object v0
.end method

.method protected getEmotionItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mEmotionItems:Ljava/util/List;

    return-object v0
.end method

.method protected getGridItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method protected getGridItemView(IIILandroid/view/View;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Landroid/view/View;
    .locals 7

    .prologue
    .line 96
    sget-object v5, Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;->B:Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->getItemView(IILandroid/view/View;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getGridItemView(IIILandroid/view/View;Ljava/lang/Object;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1
    move-object v5, p5

    check-cast v5, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->getGridItemView(IIILandroid/view/View;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getGridViewColumnHeight()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    iget v0, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnHeight:I

    return v0
.end method

.method protected getGridViewColumnWidth()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    iget v0, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnWidth:I

    return v0
.end method

.method protected getGridViewMargin()I
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method protected getGridViewNumColumns()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    iget v0, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewNumColumns:I

    return v0
.end method

.method protected getGridViewVerticalSpacing()I
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method protected getOnItemPressingListener()Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mOnItemPressingListener:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

    return-object v0
.end method

.method protected hasLongPressing()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public initEmotionPanel(Lcom/alipay/mobile/emotion/model/PanelInfo;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->initView(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public isShowShortCut()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->isShowShortCut:Z

    return v0
.end method

.method public setEmotionItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mEmotionItems:Ljava/util/List;

    .line 58
    return-void
.end method

.method public setShowShortCut(Z)V
    .locals 0

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->isShowShortCut:Z

    .line 223
    return-void
.end method
