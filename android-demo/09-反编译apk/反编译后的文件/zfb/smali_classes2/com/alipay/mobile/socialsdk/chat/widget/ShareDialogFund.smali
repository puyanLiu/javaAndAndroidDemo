.class public Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;
.super Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;
.source "ShareDialogFund.java"


# instance fields
.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/high16 v10, 0x42a00000    # 80.0f

    const-wide/16 v4, 0x0

    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 52
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->share_dialog_fund:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 54
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->a(Landroid/view/View;)V

    .line 56
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tag:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->q:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->thumb:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->i:Landroid/widget/ImageView;

    .line 58
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->j:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->fund_code:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->k:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->fund_Price:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->l:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->day_increase:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->m:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->day_increase_value:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->n:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->week_increase:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->o:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->week_increase_value:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->p:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->time:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->r:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->extra:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 68
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v3, "fundName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->from:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->s:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "tag"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "tip1"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "tip2"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "code"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "price"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "dayIncrease"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "weekIncrease"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-lez v1, :cond_1

    .line 95
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->isShowExtraWord()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APEditText;->setVisibility(I)V

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_11

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "price"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_3
    move v0, v7

    :goto_4
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v1, v1, Lcom/alipay/mobile/personalbase/share/ui/Style;->tagBgColor:I

    sget-object v2, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TAG_BG_COLOR_ARRAY:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TAG_BG_COLOR_ARRAY:[I

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Style;->tagBgColor:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v1, v1, Lcom/alipay/mobile/personalbase/share/ui/Style;->priceColor:I

    sget-object v2, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_ARRAY:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_ARRAY:[I

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Style;->priceColor:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    sget v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_EXCEPTION:I

    :cond_5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v1, v1, Lcom/alipay/mobile/personalbase/share/ui/Style;->dayIncreaseColor:I

    sget-object v2, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_ARRAY:[I

    array-length v2, v2

    if-ge v1, v2, :cond_8

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_ARRAY:[I

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Style;->dayIncreaseColor:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    sget v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_EXCEPTION:I

    :cond_7
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v1, v1, Lcom/alipay/mobile/personalbase/share/ui/Style;->weekIncreaseColor:I

    sget-object v2, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_ARRAY:[I

    array-length v2, v2

    if-ge v1, v2, :cond_9

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_ARRAY:[I

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v2, v2, Lcom/alipay/mobile/personalbase/share/ui/Style;->weekIncreaseColor:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    sget v0, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_EXCEPTION:I

    :goto_5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v0, v0, Lcom/alipay/mobile/personalbase/share/ui/Style;->timeColor:I

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_ARRAY:[I

    array-length v1, v1

    if-ge v0, v1, :cond_a

    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_ARRAY:[I

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    iget v1, v1, Lcom/alipay/mobile/personalbase/share/ui/Style;->timeColor:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    :cond_a
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->l:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "null"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_b
    const-string/jumbo v0, "\u65e0\u6570\u636e"

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "tip1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->m:Landroid/widget/TextView;

    const-string/jumbo v1, " \u2014"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->m:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_EXCEPTION:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "tip2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->o:Landroid/widget/TextView;

    const-string/jumbo v1, " \u2014"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->o:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_EXCEPTION:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "dayIncrease"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->n:Landroid/widget/TextView;

    const-string/jumbo v1, " \u2014"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->n:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_EXCEPTION:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "weekIncrease"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->p:Landroid/widget/TextView;

    const-string/jumbo v1, " \u2014"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->p:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/socialsdk/chat/util/StyleValue;->FUND_TEXT_COLOR_EXCEPTION:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    :cond_f
    return-void

    .line 73
    :cond_10
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "tag"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 92
    :catch_0
    move-exception v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_1

    .line 107
    :cond_11
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->h:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->i:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x111112

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 108
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->b:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->b:Landroid/content/Context;

    invoke-static {v5, v10}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 107
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto/16 :goto_2

    .line 114
    :cond_12
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->s:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->share_from_format:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_13
    move v0, v1

    .line 118
    goto/16 :goto_5

    :cond_14
    move-object v0, v8

    .line 121
    goto/16 :goto_6

    :cond_15
    move v0, v6

    goto/16 :goto_4
.end method
