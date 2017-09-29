.class public Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;
.super Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;
.source "ShareDialogStock.java"


# static fields
.field private static q:[I


# instance fields
.field private i:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private j:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private k:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private l:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private m:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private n:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private o:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private p:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 45
    sget v2, Lcom/alipay/mobile/socialsdk/R$color;->color_stock_exception:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/alipay/mobile/socialsdk/R$color;->color_stock_up:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/alipay/mobile/socialsdk/R$color;->color_stock_down:I

    aput v2, v0, v1

    .line 44
    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->q:[I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    const/high16 v9, 0x42a00000    # 80.0f

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v10}, Landroid/view/Window;->requestFeature(I)Z

    .line 56
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->share_dialog_stock:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->setContentView(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->a(Landroid/view/View;)V

    .line 60
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->thumb:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 61
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 62
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->stockCode:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 63
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->stockPrice:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 64
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->stockPriceChange:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 65
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->stockPriceChangeRatio:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 66
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->time:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->o:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 67
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->extra:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 68
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 69
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->from:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->p:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 70
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "stockName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "stockCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "stockPrice"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "stockPriceChange"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v3, "stockPriceChangeRatio"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v0, "\u2014 \u2014"

    :cond_0
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, "\u2014 \u2014"

    :cond_1
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    const-string/jumbo v0, "\u5f53\u524d\u65e0\u6570\u636e"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 85
    :goto_1
    if-ltz v0, :cond_3

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->q:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 86
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->q:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->q:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->q:[I

    aget v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 91
    :cond_3
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-lez v1, :cond_5

    .line 100
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->o:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->isShowExtraWord()Z

    move-result v0

    if-nez v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APEditText;->setVisibility(I)V

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_8

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->p:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 122
    :goto_4
    return-void

    :cond_7
    move-object v0, v2

    .line 79
    goto/16 :goto_0

    .line 97
    :catch_0
    move-exception v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    .line 112
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->h:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x111112

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 113
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->b:Landroid/content/Context;

    invoke-static {v4, v9}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->b:Landroid/content/Context;

    invoke-static {v5, v9}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 112
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_3

    .line 119
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->p:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->p:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->share_from_format:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_a
    move v0, v6

    goto/16 :goto_1
.end method
