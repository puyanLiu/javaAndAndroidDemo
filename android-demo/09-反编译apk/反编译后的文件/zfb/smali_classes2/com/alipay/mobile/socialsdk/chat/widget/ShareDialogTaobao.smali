.class public Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;
.super Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;
.source "ShareDialogTaobao.java"


# instance fields
.field private i:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private j:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private k:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private l:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private m:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private n:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x1

    const/high16 v8, 0x42a00000    # 80.0f

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 39
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->share_dialog_taobao:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 41
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->setContentView(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->a(Landroid/view/View;)V

    .line 43
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->thumb:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 44
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->price:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 45
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->originPrice:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->setFlags(I)V

    .line 47
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->extra:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 48
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 49
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->from:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 50
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tag1:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 51
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tag2:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "price"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "originPrice"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->isShowExtraWord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APEditText;->setVisibility(I)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->h:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 59
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x111112

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 60
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->b:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->b:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 68
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "tag1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    .line 69
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 76
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "tag2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    const-string/jumbo v0, ""

    .line 77
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 84
    :goto_6
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v0

    if-nez v0, :cond_9

    .line 85
    :cond_1
    :goto_7
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "price"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "originPrice"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->share_from_format:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "tag1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_3

    .line 72
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 76
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "tag2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_5

    .line 80
    :cond_8
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 84
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget-boolean v0, v0, Lcom/alipay/mobile/personalbase/share/ui/Style;->mWithoutLine:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setFlags(I)V

    :goto_8
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v0, v0, Lcom/alipay/mobile/personalbase/share/ui/Style;->mColor:I

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->TAOBAO_TEXT_COLOR_ARRAY:[I

    array-length v1, v1

    if-ge v0, v1, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->TAOBAO_TEXT_COLOR_ARRAY:[I

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Style;->mColor:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v0, v0, Lcom/alipay/mobile/personalbase/share/ui/Style;->midTitleColor:I

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->TAOBAO_TEXT_PRICE_COLOR_ARRAY:[I

    array-length v1, v1

    if-ge v0, v1, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->TAOBAO_TEXT_PRICE_COLOR_ARRAY:[I

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Style;->midTitleColor:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v0, v0, Lcom/alipay/mobile/personalbase/share/ui/Style;->tip1BgColor:I

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->TAOBAO_TAG_BG_COLOR_ARRAY:[I

    array-length v1, v1

    if-ge v0, v1, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->TAOBAO_TAG_BG_COLOR_ARRAY:[I

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Style;->tip1BgColor:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundColor(I)V

    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v0, v0, Lcom/alipay/mobile/personalbase/share/ui/Style;->tip2BgColor:I

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->TAOBAO_TAG_BG_COLOR_ARRAY:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->TAOBAO_TAG_BG_COLOR_ARRAY:[I

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Style;->tip2BgColor:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundColor(I)V

    goto/16 :goto_7

    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->setFlags(I)V

    goto/16 :goto_8
.end method
