.class public Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;
.super Landroid/widget/RelativeLayout;
.source "CategoryCellView.java"


# instance fields
.field private clickParam:Ljava/lang/String;

.field private icon:Landroid/widget/ImageView;

.field private jsonData:Lcom/alibaba/fastjson/JSONObject;

.field private onClickCallback:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;

.field private redPoint:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field private roundImagePlugin:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->onClickCallback:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;

    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->onClickCallback:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;

    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->onClickCallback:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;

    .line 60
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->clickParam:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->handleFriendBizHandle()V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->onClickCallback:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;

    return-object v0
.end method

.method private getDefaultIconId()I
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FRIEND"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->category_friend:I

    .line 202
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->category_def:I

    goto :goto_0
.end method

.method private handleFriendBizHandle()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "ext_showRedHot"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "ext_showRedHot"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->redPoint:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->POINT:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "ext_imageUrlNew"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "ext_imageUrlNew"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setCategoryImage()V

    .line 195
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->view_category_cell:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 77
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->text:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->icon:Landroid/widget/ImageView;

    .line 79
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->red_point:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->redPoint:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 80
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->roundImagePlugin:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->roundImagePlugin:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->category_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->setRoundHeight(I)V

    .line 82
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->roundImagePlugin:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->category_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->setRoundWidth(I)V

    .line 84
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method private setCategoryName()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->text:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "tag"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "tag"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isHasRedHot()Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "ext_showRedHot"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "ext_showRedHot"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCategoryImage()V
    .locals 7

    .prologue
    .line 145
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 146
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->category_icon_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->category_icon_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;-><init>(II)V

    .line 148
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/MultiMediaHelper;->getNearestImageSize(Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    move-result-object v5

    .line 149
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "ext_imageUrlNew"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "ext_imageUrlNew"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->icon:Landroid/widget/ImageView;

    .line 151
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getDefaultIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 152
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v4

    .line 153
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->roundImagePlugin:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    .line 150
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "imageUrl"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "imageUrl"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->icon:Landroid/widget/ImageView;

    .line 156
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getDefaultIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 157
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v4

    .line 158
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->roundImagePlugin:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    .line 155
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0

    .line 160
    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getDefaultIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 161
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v4

    .line 162
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getHeight()I

    move-result v5

    .line 160
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0
.end method

.method public setCategoryRedHot()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "ext_showRedHot"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "ext_showRedHot"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->redPoint:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->POINT:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->redPoint:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->POINT:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    goto :goto_0
.end method

.method public setData(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    .line 126
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->clickParam:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setCategoryName()V

    .line 129
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setCategoryImage()V

    .line 130
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setCategoryRedHot()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setVisibility(I)V

    .line 134
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setOnClickCallback(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->onClickCallback:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;

    .line 45
    return-void
.end method
