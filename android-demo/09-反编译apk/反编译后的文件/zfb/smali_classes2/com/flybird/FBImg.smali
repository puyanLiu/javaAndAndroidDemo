.class public Lcom/flybird/FBImg;
.super Lcom/flybird/FBView;
.source "FBImg.java"

# interfaces
.implements Lcom/flybird/ILayoutListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Ljava/lang/String;

.field private k:Lcom/flybird/FBDocument;

.field private l:D

.field private m:D

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flybird/FBDocument;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 29
    new-instance v0, Lcom/flybird/FBBorderImg;

    invoke-direct {v0, p1}, Lcom/flybird/FBBorderImg;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBImg;->k:Lcom/flybird/FBDocument;

    .line 24
    iput-boolean v1, p0, Lcom/flybird/FBImg;->p:Z

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/flybird/FBImg;->q:I

    .line 157
    iput-boolean v1, p0, Lcom/flybird/FBImg;->r:Z

    .line 30
    iput-object p2, p0, Lcom/flybird/FBImg;->k:Lcom/flybird/FBDocument;

    .line 31
    iget-object v0, p0, Lcom/flybird/FBImg;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flybird/FBImg;->a:Landroid/widget/ImageView;

    .line 32
    iget-object v0, p0, Lcom/flybird/FBImg;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 33
    iput-wide v2, p0, Lcom/flybird/FBImg;->l:D

    .line 34
    iput-wide v2, p0, Lcom/flybird/FBImg;->m:D

    .line 35
    return-void
.end method

.method private a(Ljava/lang/String;)D
    .locals 5

    .prologue
    .line 58
    const-string/jumbo v0, "PX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v0, "PX"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 66
    :goto_0
    return-wide v0

    .line 63
    :cond_0
    const-string/jumbo v0, "px"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/flybird/FBImg;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getDocumentAssistor()Lcom/flybird/FBDocumentAssistor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flybird/FBDocumentAssistor;->getDp()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double v0, v1, v3

    goto :goto_0
.end method

.method static synthetic a(Lcom/flybird/FBImg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/flybird/FBImg;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/flybird/FBImg;->k:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/flybird/FBImg$1;

    invoke-direct {v1, p0}, Lcom/flybird/FBImg$1;-><init>(Lcom/flybird/FBImg;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method static synthetic b(Lcom/flybird/FBImg;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flybird/FBImg;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/flybird/FBImg;)Lcom/flybird/FBDocument;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/flybird/FBImg;->k:Lcom/flybird/FBDocument;

    return-object v0
.end method

.method static synthetic d(Lcom/flybird/FBImg;)[I
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 139
    iget v0, p0, Lcom/flybird/FBImg;->c:I

    iget v1, p0, Lcom/flybird/FBImg;->d:I

    iget-wide v2, p0, Lcom/flybird/FBImg;->m:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/flybird/FBImg;->m:D

    double-to-int v0, v2

    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/flybird/FBImg;->l:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v1, p0, Lcom/flybird/FBImg;->l:D

    double-to-int v1, v1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2

    :cond_1
    iget-wide v2, p0, Lcom/flybird/FBImg;->l:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/flybird/FBImg;->l:D

    double-to-int v0, v2

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/flybird/FBImg;->m:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/flybird/FBImg;->m:D

    double-to-int v0, v2

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1

    :cond_3
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1
.end method

.method static synthetic e(Lcom/flybird/FBImg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flybird/FBImg;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/flybird/FBImg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flybird/FBImg;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/flybird/FBImg;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/flybird/FBImg;->q:I

    return v0
.end method

.method static synthetic h(Lcom/flybird/FBImg;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/flybird/FBImg;->p:Z

    return v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 0

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/flybird/FBImg;->a()V

    .line 137
    :cond_0
    return-void
.end method

.method public doDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-super {p0}, Lcom/flybird/FBView;->doDestroy()V

    .line 180
    iput-object v0, p0, Lcom/flybird/FBImg;->k:Lcom/flybird/FBDocument;

    .line 181
    iput-object v0, p0, Lcom/flybird/FBImg;->a:Landroid/widget/ImageView;

    .line 182
    return-void
.end method

.method public onLoadFinish()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/flybird/FBView;->onLoadFinish()V

    .line 109
    iget-object v0, p0, Lcom/flybird/FBImg;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/flybird/FBImg;->a()V

    goto :goto_0
.end method

.method public requestLayout(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 161
    const/4 v0, 0x0

    .line 162
    iget-boolean v2, p0, Lcom/flybird/FBImg;->h:Z

    if-nez v2, :cond_0

    .line 164
    iput p1, p0, Lcom/flybird/FBImg;->c:I

    move v0, v1

    .line 167
    :cond_0
    iget-boolean v2, p0, Lcom/flybird/FBImg;->i:Z

    if-nez v2, :cond_1

    .line 169
    iput p2, p0, Lcom/flybird/FBImg;->d:I

    move v0, v1

    .line 171
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/flybird/FBImg;->r:Z

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/flybird/FBImg;->k:Lcom/flybird/FBDocument;

    invoke-virtual {v0, p0}, Lcom/flybird/FBDocument;->layout(Lcom/flybird/FBView;)V

    .line 173
    iput-boolean v1, p0, Lcom/flybird/FBImg;->r:Z

    .line 175
    :cond_2
    return-void
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iput-object p2, p0, Lcom/flybird/FBImg;->b:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/flybird/FBImg;->k:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBImg;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/flybird/FBImg;->a()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBImg;->a:Landroid/widget/ImageView;

    check-cast v0, Lcom/flybird/FBBorderImg;

    invoke-virtual {v0, p2}, Lcom/flybird/FBBorderImg;->resetWheelHelper(Ljava/lang/String;)V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    const-string/jumbo v0, "srcheight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-direct {p0, p2}, Lcom/flybird/FBImg;->a(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/flybird/FBImg;->l:D

    goto :goto_0

    .line 81
    :cond_3
    const-string/jumbo v0, "srcwidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-direct {p0, p2}, Lcom/flybird/FBImg;->a(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/flybird/FBImg;->m:D

    goto :goto_0

    .line 83
    :cond_4
    const-string/jumbo v0, "defaultvalue"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    iput-object p2, p0, Lcom/flybird/FBImg;->n:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_5
    const-string/jumbo v0, "failurevalue"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    iput-object p2, p0, Lcom/flybird/FBImg;->o:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_6
    const-string/jumbo v0, "imageGray"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 88
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flybird/FBImg;->p:Z

    goto :goto_0

    .line 89
    :cond_7
    const-string/jumbo v0, "contentmode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const-string/jumbo v0, "ScaleToFill"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 92
    iget-object v0, p0, Lcom/flybird/FBImg;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 93
    :cond_8
    const-string/jumbo v0, "ScaleAspectFit"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Lcom/flybird/FBImg;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 95
    :cond_9
    const-string/jumbo v0, "ScaleAspectFill"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 96
    iget-object v0, p0, Lcom/flybird/FBImg;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    .line 97
    :cond_a
    const-string/jumbo v0, "ScaleAspectAuto"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 98
    iget-object v0, p0, Lcom/flybird/FBImg;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    .line 99
    :cond_b
    const-string/jumbo v0, "Center"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/flybird/FBImg;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "-webkit-filter"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "webkitFilter"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    :cond_0
    const-string/jumbo v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 42
    if-lez v0, :cond_4

    .line 43
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_0
    const-string/jumbo v1, ")"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string/jumbo v1, "blur"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    invoke-direct {p0, v0}, Lcom/flybird/FBImg;->a(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/flybird/FBImg;->q:I

    .line 51
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/flybird/FBImg;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/flybird/FBImg;->a()V

    .line 55
    :cond_2
    return-void

    .line 48
    :cond_3
    const-string/jumbo v1, "grayscale"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flybird/FBImg;->p:Z

    goto :goto_1

    :cond_4
    move-object v0, p2

    goto :goto_0
.end method
