.class public Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;
.super Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;
.source "ShareDialogWeb.java"


# instance fields
.field private i:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private j:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private k:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/high16 v7, 0x42a00000    # 80.0f

    const/4 v6, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 35
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->share_dialog_webpage:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 37
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->setContentView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->a(Landroid/view/View;)V

    .line 39
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->thumb:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 40
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->desc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 41
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->extra:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 42
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 43
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->from:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->isShowExtraWord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APEditText;->setVisibility(I)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->h:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x111112

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 52
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->b:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->b:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 58
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 64
    :goto_1
    return-void

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v1

    array-length v1, v1

    .line 54
    invoke-static {v0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->share_from_format:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
