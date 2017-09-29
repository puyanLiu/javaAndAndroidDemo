.class public Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;
.super Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;
.source "ShareDialogWithStar.java"


# instance fields
.field private i:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private j:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 12

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 34
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->share_dialog_webpage_with_star:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 36
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->setContentView(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->a(Landroid/view/View;)V

    .line 38
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->thumb:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 39
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 40
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->desc:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 41
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->extra:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 42
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->from:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 43
    sget v2, Lcom/alipay/mobile/socialsdk/R$id;->subTitle:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 44
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v5}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 47
    sget v3, Lcom/alipay/mobile/socialsdk/R$id;->star1:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget v3, Lcom/alipay/mobile/socialsdk/R$id;->star2:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget v3, Lcom/alipay/mobile/socialsdk/R$id;->star3:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget v3, Lcom/alipay/mobile/socialsdk/R$id;->star4:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget v3, Lcom/alipay/mobile/socialsdk/R$id;->star5:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendData()Ljava/lang/String;

    move-result-object v3

    .line 53
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v4}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getSubTitle()Ljava/lang/String;

    move-result-object v5

    .line 54
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v4}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 55
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v4}, Lcom/alipay/mobile/personalbase/model/ShareModel;->isShowExtraWord()Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Lcom/alipay/mobile/commonui/widget/APEditText;->setVisibility(I)V

    .line 58
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 59
    sget v3, Lcom/alipay/mobile/socialsdk/R$id;->starArea:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 60
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 61
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 62
    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    move-object v2, v0

    move-object v0, v6

    .line 86
    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 91
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 97
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->h:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x111112

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 98
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->b:Landroid/content/Context;

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->b:Landroid/content/Context;

    const/high16 v6, 0x42a00000    # 80.0f

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 99
    return-void

    .line 65
    :cond_2
    sget v3, Lcom/alipay/mobile/socialsdk/R$id;->subTitleArea:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 67
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setMaxLines(I)V

    goto :goto_0

    .line 71
    :cond_3
    sget v4, Lcom/alipay/mobile/socialsdk/R$id;->starArea:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 73
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpl-double v3, v3, v8

    if-lez v3, :cond_8

    .line 75
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v3, v2

    .line 76
    :goto_3
    const/4 v2, 0x0

    move v4, v2

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v4, v2, :cond_4

    .line 86
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    move-object v0, v5

    goto/16 :goto_1

    .line 77
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    int-to-double v10, v4

    sub-double/2addr v8, v10

    const-wide v10, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v8, v10

    if-lez v2, :cond_5

    .line 78
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v8, Lcom/alipay/mobile/socialsdk/R$drawable;->star_selected:I

    invoke-virtual {v2, v8}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 76
    :goto_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    .line 79
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    int-to-double v10, v4

    sub-double/2addr v8, v10

    const-wide v10, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v8, v10

    if-lez v2, :cond_6

    .line 80
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v8, Lcom/alipay/mobile/socialsdk/R$drawable;->star_half:I

    invoke-virtual {v2, v8}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_5

    .line 82
    :cond_6
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v8, Lcom/alipay/mobile/socialsdk/R$drawable;->star:I

    invoke-virtual {v2, v8}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_5

    .line 93
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 94
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->share_from_format:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v4}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    move-object v3, v2

    goto :goto_3
.end method
