.class public Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;
.super Landroid/widget/LinearLayout;
.source "ActivityTitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final INTERVAL_MILLIS:J = 0x3e8L

.field private static final ONE_DAY_MILLIS:J = 0x5265c00L

.field private static final ONE_HOUR_MILLIS:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "ActivityTitleView"


# instance fields
.field private final activityStatus:Landroid/widget/TextView;

.field private final cellList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;",
            ">;"
        }
    .end annotation
.end field

.field private clickParam:Ljava/lang/String;

.field private delegate:Ljava/lang/Runnable;

.field private gmtDataMillis:J

.field private gmtEndMillis:J

.field private gmtStartMillis:J

.field private final line0:Landroid/view/View;

.field private final line1:Landroid/view/View;

.field private promoSchema:Ljava/lang/String;

.field private tickCountMillis:J

.field private timerRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->delegate:Ljava/lang/Runnable;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->timerRunning:Z

    .line 63
    iput-wide v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    .line 64
    iput-wide v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtEndMillis:J

    .line 65
    iput-wide v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtDataMillis:J

    .line 66
    iput-wide v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->tickCountMillis:J

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->clickParam:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->view_activity_title:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 74
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_activity_status:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->activityStatus:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->line_0:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->line0:Landroid/view/View;

    .line 76
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->line_1:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->line1:Landroid/view/View;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)V

    .line 80
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->layout_0:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    .line 81
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->icon_0:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->imageViewId:I

    .line 82
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_0:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->richTextId:I

    .line 83
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->discount_0:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountId:I

    .line 84
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->discount_new_0:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountNewId:I

    .line 85
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->discount_old_0:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountOldId:I

    .line 86
    iget-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)V

    .line 90
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->layout_1:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    .line 91
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->icon_1:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->imageViewId:I

    .line 92
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_1:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->richTextId:I

    .line 93
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->discount_1:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountId:I

    .line 94
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->discount_new_1:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountNewId:I

    .line 95
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->discount_old_1:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountOldId:I

    .line 96
    iget-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)V

    .line 100
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->layout_2:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    .line 101
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->icon_2:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->imageViewId:I

    .line 102
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_2:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->richTextId:I

    .line 103
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->discount_2:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountId:I

    .line 104
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->discount_new_2:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountNewId:I

    .line 105
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->discount_old_2:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountOldId:I

    .line 106
    iget-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->layout_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->promoSchema:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)Z
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->executeBizTask()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->timerRunning:Z

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->delegate:Ljava/lang/Runnable;

    return-object v0
.end method

.method private executeBizTask()Z
    .locals 14

    .prologue
    const-wide/32 v11, 0x36ee80

    const/4 v10, 0x2

    const/16 v9, 0xd

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 313
    .line 317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 318
    const-string/jumbo v3, "GMT+8"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 320
    iget-wide v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtDataMillis:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->tickCountMillis:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    .line 321
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_7

    .line 322
    add-long v5, v3, v11

    iget-wide v7, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 323
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    sub-long v3, v5, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 324
    const-string/jumbo v0, "HH:mm:ss"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat0(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->activity_start_time:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " <font color=#f85800>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move-object v13, v0

    move v0, v1

    move-object v1, v13

    .line 378
    :goto_0
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->activityStatus:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 379
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->activityStatus:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    if-eqz v0, :cond_a

    .line 381
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->activityStatus:Landroid/widget/TextView;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->activity_shape_rectangle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 388
    :cond_0
    :goto_1
    return v2

    .line 327
    :cond_1
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    invoke-direct {p0, v5, v6, v3, v4}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimespanDays(JJ)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 329
    iget-wide v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 331
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 332
    const-string/jumbo v0, "HH:mm"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 336
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "<font color=#f85800>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->activity_on_time:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move-object v13, v0

    move v0, v1

    move-object v1, v13

    goto :goto_0

    .line 334
    :cond_2
    const-string/jumbo v0, "HH:mm:ss"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 338
    :cond_3
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    invoke-direct {p0, v5, v6, v3, v4}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimespanDays(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 340
    iget-wide v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 342
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 343
    const-string/jumbo v0, "HH:mm"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 347
    :goto_3
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->activity_tomorrow:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "<font color=#f85800>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->activity_on_time:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move-object v13, v0

    move v0, v1

    move-object v1, v13

    goto/16 :goto_0

    .line 345
    :cond_4
    const-string/jumbo v0, "HH:mm:ss"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 351
    :cond_5
    iget-wide v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 352
    const-string/jumbo v3, "%d\u6708%d\u65e5"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 356
    const-string/jumbo v0, "HH:mm"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "<font color=#f85800>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->activity_on_time:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move-object v13, v0

    move v0, v1

    move-object v1, v13

    goto/16 :goto_0

    .line 358
    :cond_6
    const-string/jumbo v0, "HH:mm:ss"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 364
    :cond_7
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtEndMillis:J

    sub-long/2addr v5, v11

    cmp-long v5, v3, v5

    if-gtz v5, :cond_8

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<font color=#f85800>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->activity_running:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move-object v13, v0

    move v0, v1

    move-object v1, v13

    goto/16 :goto_0

    .line 366
    :cond_8
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtEndMillis:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_9

    .line 367
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtEndMillis:J

    sub-long v3, v5, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 368
    const-string/jumbo v0, "HH:mm:ss"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat0(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->activity_end_time:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " <font color=#f85800>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move-object v13, v0

    move v0, v1

    move-object v1, v13

    goto/16 :goto_0

    .line 372
    :cond_9
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->activity_end:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    .line 374
    goto/16 :goto_0

    .line 383
    :cond_a
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->activityStatus:Landroid/widget/TextView;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_1
.end method

.method private getTimeFormat0(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 302
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v1, "GMT+8"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 308
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimespanDays(JJ)J
    .locals 8

    .prologue
    .line 430
    const-wide/32 v0, 0x1b77400

    add-long v2, p1, v0

    .line 431
    const-wide/32 v0, 0x1b77400

    add-long v4, p3, v0

    .line 433
    const-wide/32 v0, 0x5265c00

    div-long v0, v2, v0

    .line 434
    const-wide/32 v6, 0x5265c00

    rem-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 435
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 438
    :cond_0
    const-wide/32 v2, 0x5265c00

    div-long v2, v4, v2

    .line 439
    const-wide/32 v4, 0x5265c00

    rem-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 440
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 443
    :cond_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_2
    sub-long v0, v2, v0

    goto :goto_0
.end method

.method private initActivityBody(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->line0:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->line1:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    move v1, v2

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 201
    const-string/jumbo v0, "details"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    const-string/jumbo v0, "details"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 203
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v2

    .line 204
    :goto_1
    if-lt v3, v4, :cond_4

    .line 208
    const/4 v0, 0x1

    if-le v4, v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->line0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_0
    const/4 v0, 0x2

    if-le v4, v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->line1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :cond_1
    return-void

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    iget-object v3, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    iget v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountId:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_3

    .line 197
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 205
    :cond_4
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    invoke-direct {p0, v5, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->setActivityCell(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;)V

    .line 204
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1
.end method

.method private initActivityTitle(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ActivityTitleView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "currentTimer  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->tickCountMillis:J

    .line 139
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->title_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 140
    if-eqz v2, :cond_0

    .line 141
    const-string/jumbo v0, "topicLogo"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const-string/jumbo v0, "topicLogo"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 144
    if-eqz v0, :cond_0

    .line 145
    new-instance v3, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->activity_title_icon_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->activity_title_icon_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;-><init>(II)V

    .line 146
    invoke-static {v0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/util/MultiMediaHelper;->getNearestImageSize(Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    move-result-object v5

    .line 147
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->activity_title_icon:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v4

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 154
    :cond_0
    :goto_0
    const-string/jumbo v0, "promoSchema"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    const-string/jumbo v0, "promoSchema"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->promoSchema:Ljava/lang/String;

    .line 160
    :goto_1
    const-string/jumbo v0, "gmtStart"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    const-string/jumbo v0, "gmtStart"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    .line 166
    :goto_2
    const-string/jumbo v0, "gmtEnd"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    const-string/jumbo v0, "gmtEnd"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtEndMillis:J

    .line 172
    :goto_3
    const-string/jumbo v0, "currentTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    const-string/jumbo v0, "currentTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtDataMillis:J

    .line 179
    :goto_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 180
    iget-wide v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 181
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ActivityTitleView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "gmtStart: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-wide v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtEndMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 183
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ActivityTitleView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "gmtEnd: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-wide v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtDataMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 185
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ActivityTitleView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "gmtDate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 150
    :cond_1
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->activity_title_icon:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 157
    :cond_2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->promoSchema:Ljava/lang/String;

    goto/16 :goto_1

    .line 163
    :cond_3
    iput-wide v7, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    goto/16 :goto_2

    .line 169
    :cond_4
    iput-wide v7, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtEndMillis:J

    goto/16 :goto_3

    .line 175
    :cond_5
    iput-wide v7, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtDataMillis:J

    goto/16 :goto_4
.end method

.method private launchDelegate()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->delegate:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->delegate:Ljava/lang/Runnable;

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->startTimer()V

    .line 296
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->executeBizTask()Z

    .line 297
    return-void
.end method

.method private setActivityCell(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 218
    iget-object v6, p2, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    .line 219
    iget v0, p2, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->imageViewId:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 221
    const-string/jumbo v0, "logoUrl"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->activity_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 227
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->activity_icon_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 226
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 228
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-static {v0, v1, v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/MultiMediaHelper;->getNearestImageSize(Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;II)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    move-result-object v5

    .line 231
    const-string/jumbo v1, "logoUrl"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->placeholder:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 233
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v4

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getHeight()I

    move-result v5

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 239
    :cond_0
    :goto_0
    iget v0, p2, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->richTextId:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 240
    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :goto_1
    iget v0, p2, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountId:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 247
    if-eqz v2, :cond_1

    .line 248
    const-string/jumbo v0, ""

    .line 249
    const-string/jumbo v1, "discount"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 250
    const-string/jumbo v0, "discount"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 252
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_1
    :goto_3
    invoke-virtual {v6, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 277
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 278
    return-void

    .line 236
    :cond_2
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->placeholder:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 243
    :cond_3
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 255
    :cond_4
    iget v0, p2, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountNewId:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 256
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "<font size=\"12\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "</font>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3, v1}, Lcom/alipay/tag/html/Html;->fromHtml(FLjava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_4
    iget v0, p2, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountOldId:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 265
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setFlags(I)V

    .line 266
    const-string/jumbo v1, "originalDiscount"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 267
    const-string/jumbo v1, "originalDiscount"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :goto_5
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 261
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 269
    :cond_6
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    move-object v1, v0

    goto/16 :goto_2
.end method

.method private startTimer()V
    .locals 3

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->timerRunning:Z

    if-nez v0, :cond_0

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->timerRunning:Z

    .line 394
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->delegate:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 408
    if-eqz v0, :cond_3

    .line 409
    const-string/jumbo v1, "jumpUrl"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "jumpUrl"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 410
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->clickParam:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "&_merchantName="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/UrlCoderHelper;->encoderUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    :cond_0
    const-string/jumbo v2, "logoUrl"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "&_logo="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "logoUrl"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    :cond_1
    const-string/jumbo v2, "discountRate"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "&_discountNum="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "discountRate"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    :cond_2
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->goUrl(Ljava/lang/String;)V

    .line 426
    :cond_3
    return-void

    .line 409
    :cond_4
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->promoSchema:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 400
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 401
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->stopTimer()V

    .line 402
    return-void
.end method

.method public startTimerHandler(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->initActivityTitle(Ljava/util/Map;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->initActivityBody(Ljava/util/Map;)V

    .line 126
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->clickParam:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->launchDelegate()V

    .line 128
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->timerRunning:Z

    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->delegate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method
