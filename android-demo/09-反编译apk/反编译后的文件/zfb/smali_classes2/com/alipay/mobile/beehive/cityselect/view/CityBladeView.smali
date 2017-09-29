.class public Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;
.super Landroid/view/View;
.source "CityBladeView.java"


# instance fields
.field private currSelection:I

.field private dismissRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private maxSectionLength:I

.field private onItemClickListener:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;

.field private paint:Landroid/graphics/Paint;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private sections:[Ljava/lang/String;

.field private showBkg:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->currSelection:I

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->showBkg:Z

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->handler:Landroid/os/Handler;

    .line 180
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$1;-><init>(Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->dismissRunnable:Ljava/lang/Runnable;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$array;->cityselect_default_section_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->sections:[Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    sget v1, Lcom/alipay/mobile/beehive/R$integer;->cityselect_max_section_length:I

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->maxSectionLength:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->currSelection:I

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->showBkg:Z

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->handler:Landroid/os/Handler;

    .line 180
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$1;-><init>(Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->dismissRunnable:Ljava/lang/Runnable;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$array;->cityselect_default_section_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->sections:[Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$integer;->cityselect_max_section_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 52
    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->maxSectionLength:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->currSelection:I

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->showBkg:Z

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->handler:Landroid/os/Handler;

    .line 180
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$1;-><init>(Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->dismissRunnable:Ljava/lang/Runnable;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$array;->cityselect_default_section_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->sections:[Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$integer;->cityselect_max_section_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 45
    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->maxSectionLength:I

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private dismissPopup()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->dismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    return-void
.end method

.method private performItemClicked(I)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->onItemClickListener:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->onItemClickListener:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->sections:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;->onItemClick(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 122
    iget v3, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->currSelection:I

    .line 124
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->getHeight()I

    move-result v0

    .line 125
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->sections:[Ljava/lang/String;

    array-length v5, v5

    div-int/2addr v4, v5

    .line 126
    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v6, "A"

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 127
    mul-int/lit8 v6, v5, 0x3

    if-le v4, v6, :cond_0

    .line 128
    mul-int/lit8 v0, v5, 0x3

    .line 130
    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->sections:[Ljava/lang/String;

    array-length v4, v4

    mul-int/2addr v0, v4

    .line 133
    :cond_0
    int-to-float v0, v0

    div-float v0, v2, v0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->sections:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 135
    packed-switch v1, :pswitch_data_0

    .line 162
    :cond_1
    :goto_0
    return v7

    .line 137
    :pswitch_0
    iput-boolean v7, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->showBkg:Z

    .line 138
    if-eq v3, v0, :cond_1

    .line 139
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->sections:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 140
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->performItemClicked(I)V

    .line 141
    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->currSelection:I

    .line 142
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->invalidate()V

    goto :goto_0

    .line 147
    :pswitch_1
    if-eq v3, v0, :cond_1

    .line 148
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->sections:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 149
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->performItemClicked(I)V

    .line 150
    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->currSelection:I

    .line 151
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->invalidate()V

    goto :goto_0

    .line 156
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->showBkg:Z

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->currSelection:I

    .line 158
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->dismissPopup()V

    .line 159
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->invalidate()V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->showBkg:Z

    if-eqz v0, :cond_0

    .line 76
    const-string/jumbo v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->getHeight()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->getWidth()I

    move-result v4

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->sections:[Ljava/lang/String;

    array-length v1, v1

    div-int v1, v0, v1

    .line 83
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    const/16 v3, 0x190

    if-ge v0, v3, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/beehive/R$dimen;->lifepay_letters_item_little_fontsize:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 90
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v3, "A"

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 92
    mul-int/lit8 v3, v0, 0x3

    if-le v1, v3, :cond_5

    .line 93
    mul-int/lit8 v0, v0, 0x3

    .line 96
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 97
    const-string/jumbo v3, "CityBladeView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "singleHeight: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 99
    const-string/jumbo v6, "; 3 * paint.measureText:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 100
    iget-object v6, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v7, "A"

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-interface {v1, v3, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 102
    :goto_2
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->sections:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 116
    return-void

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/beehive/R$dimen;->lifepay_letters_item_fontsize:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    .line 103
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v5, "#00AAEE"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget v3, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->currSelection:I

    if-ne v1, v3, :cond_3

    .line 105
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v5, "#6600AAEE"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->sections:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->maxSectionLength:I

    if-le v5, v6, :cond_4

    .line 109
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->sections:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget v5, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->maxSectionLength:I

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 111
    :cond_4
    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 112
    mul-int v6, v0, v1

    add-int/2addr v6, v0

    int-to-float v6, v6

    .line 114
    iget-object v7, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->onItemClickListener:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;

    .line 171
    return-void
.end method

.method public setSections(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->sections:[Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->invalidate()V

    goto :goto_0
.end method
