.class public Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;
.super Lcom/alipay/mobile/mpass/badge/ui/BadgeView;
.source "WealthWidgetMsgFlag.java"


# static fields
.field protected static final MSG_STYLE_LABLE:I = 0x3

.field public static final MSG_WIDGET_TYPE_SDK:I = 0x1

.field public static final MSG_WIDGET_TYPE_TAG:I


# instance fields
.field private a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:I

    .line 56
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 157
    .line 161
    const/4 v1, 0x0

    .line 162
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v5

    move v6, v5

    move v7, v5

    move v2, v5

    .line 164
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    const-string/jumbo v0, "EMPTY"

    iput-object v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v9}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->concatenate([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-nez v2, :cond_7

    if-nez v7, :cond_7

    if-nez v6, :cond_7

    if-nez v4, :cond_7

    move v0, v5

    :goto_2
    sget-object v2, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Z

    iput-object v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setMsgStyle(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    invoke-direct {p0, v3, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_3
    iput-boolean v3, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Z

    .line 189
    return-void

    .line 163
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 165
    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->isHideFlag()Z

    move-result v11

    .line 166
    if-nez v11, :cond_2

    .line 167
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "#"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v12, "|"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 168
    const-string/jumbo v12, "|"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v11, :cond_6

    move v8, v5

    :goto_4
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 167
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_2
    if-nez v11, :cond_0

    .line 171
    if-nez v2, :cond_3

    const-string/jumbo v8, "lable"

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getMsgStyle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 173
    iget-object v1, v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:Ljava/lang/String;

    move v2, v3

    .line 175
    :cond_3
    sget-object v8, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getMsgStyle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 177
    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getShowNum()I

    move v7, v3

    .line 179
    :cond_4
    if-nez v6, :cond_5

    sget-object v8, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NEW:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getMsgStyle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v6, v3

    .line 182
    :cond_5
    if-nez v4, :cond_0

    sget-object v8, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getMsgStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v3

    .line 183
    goto/16 :goto_0

    :cond_6
    move v8, v3

    .line 168
    goto :goto_4

    :cond_7
    move v0, v3

    .line 188
    goto/16 :goto_2

    :cond_8
    move v3, v5

    goto/16 :goto_3

    :cond_9
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private a(ZLjava/lang/String;)Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/utils/AssetRedpointCacheUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz p1, :cond_0

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->txtTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->txtTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->txtTextView:Landroid/widget/TextView;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$drawable;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->pointImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public ackClick()V
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:I

    if-nez v0, :cond_2

    .line 224
    iget-boolean v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/widgets/asset/utils/AssetRedpointCacheUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->refreshMsgFlag()V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v1, v1, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a(Ljava/util/List;)V

    .line 233
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->ackClick()V

    .line 235
    :cond_1
    return-void

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->refreshMsgFlag()V

    goto :goto_0
.end method

.method public addChild(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V
    .locals 1

    .prologue
    .line 353
    if-nez p1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {p1, p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setParent(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    goto :goto_0
.end method

.method public clearChildren()V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 367
    return-void

    .line 363
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 364
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setParent(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    goto :goto_0
.end method

.method public getBadgeWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsgStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getParentMsgFlag()Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    return-object v0
.end method

.method public getShowNum()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 329
    iget v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:I

    if-nez v1, :cond_0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "[-+]?\\d+?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    .line 340
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, v0

    .line 331
    goto :goto_0

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 338
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:I

    if-eqz v0, :cond_0

    .line 286
    invoke-super {p0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public isCacheTag()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Z

    return v0
.end method

.method public isHideFlag()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 71
    iget v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:I

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getShowNum()I

    move-result v1

    .line 74
    iget-boolean v2, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Z

    iget-object v3, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    if-nez v1, :cond_1

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Z

    return v0
.end method

.method public refreshMsgFlag()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a(Ljava/util/List;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->updateFlag()V

    .line 100
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 255
    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:I

    if-nez v0, :cond_0

    .line 256
    iput-object v2, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:Ljava/lang/String;

    .line 257
    iput-object v2, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Ljava/lang/String;

    .line 258
    iput-boolean v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Z

    .line 259
    iput-boolean v1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Z

    .line 260
    :cond_0
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Ljava/lang/String;

    .line 264
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->refreshMsgFlag()V

    .line 266
    return-void
.end method

.method public setBindingWidget(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 274
    :cond_0
    iput-object p1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCacheTag(Z)V
    .locals 0

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Z

    .line 379
    return-void
.end method

.method public setMsgData(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:I

    .line 306
    iput-boolean p1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Z

    .line 307
    iput-boolean p2, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Z

    .line 308
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Ljava/lang/String;

    .line 309
    iput-object p4, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:Ljava/lang/String;

    .line 310
    invoke-virtual {p0, p5}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setMsgStyle(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->refreshMsgFlag()V

    .line 312
    return-void
.end method

.method public setMsgDataWidthoutRefresh(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:I

    .line 317
    iput-boolean p1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Z

    .line 318
    iput-boolean p2, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Z

    .line 319
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Ljava/lang/String;

    .line 320
    iput-object p4, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:Ljava/lang/String;

    .line 321
    invoke-virtual {p0, p5}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setMsgStyle(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public setMsgStyle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setParent(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 350
    return-void
.end method

.method public setShow(Z)V
    .locals 0

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Z

    .line 387
    return-void
.end method

.method protected updateFlag()V
    .locals 4

    .prologue
    .line 106
    iget v0, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->c:I

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/alipay/asset/common/view/g;

    invoke-direct {v0, p0}, Lcom/alipay/asset/common/view/g;-><init>(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->post(Ljava/lang/Runnable;)Z

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "WealthWidgetMsgFlag"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "WidgetId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",show="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 140
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->isHideFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
