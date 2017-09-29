.class public Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "RecentSessionCursorAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private a:Landroid/app/Activity;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/text/style/ForegroundColorSpan;

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private r:J

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 60
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->u:I

    .line 61
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->v:I

    .line 62
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->w:I

    .line 63
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->x:I

    .line 64
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->y:I

    .line 65
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->z:I

    .line 66
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->A:I

    .line 67
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->B:I

    .line 68
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->C:I

    .line 69
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->D:I

    .line 70
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->E:I

    .line 71
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->F:I

    .line 72
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->G:I

    .line 73
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->H:I

    .line 74
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->I:I

    .line 75
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->J:I

    .line 76
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->K:I

    .line 77
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->L:I

    .line 78
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->M:I

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->b:Landroid/view/LayoutInflater;

    .line 84
    iput-object p3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->c:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 85
    invoke-direct {p0, p2}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    sget v1, Lcom/alipay/mobile/socialwidget/R$color;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->f:I

    .line 88
    sget v1, Lcom/alipay/mobile/socialwidget/R$color;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->h:I

    .line 89
    sget v1, Lcom/alipay/mobile/socialwidget/R$color;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->g:I

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    sget v2, Lcom/alipay/mobile/socialwidget/R$string;->b:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->d:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    sget v2, Lcom/alipay/mobile/socialwidget/R$string;->i:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->e:Ljava/lang/String;

    .line 92
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lcom/alipay/mobile/socialwidget/R$color;->a:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->p:Landroid/text/style/ForegroundColorSpan;

    .line 93
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 96
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->u:I

    .line 100
    const-string/jumbo v0, "itemType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->v:I

    .line 101
    const-string/jumbo v0, "icon"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->w:I

    .line 102
    const-string/jumbo v0, "sendingState"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->x:I

    .line 103
    const-string/jumbo v0, "notDisturb"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->y:I

    .line 104
    const-string/jumbo v0, "unread"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->z:I

    .line 105
    const-string/jumbo v0, "displayName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->A:I

    .line 106
    const-string/jumbo v0, "lastBizMemo"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->B:I

    .line 107
    const-string/jumbo v0, "voiceNotReadState"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->C:I

    .line 108
    const-string/jumbo v0, "atMe"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->D:I

    .line 109
    const-string/jumbo v0, "draft"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->E:I

    .line 110
    const-string/jumbo v0, "top"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->F:I

    .line 111
    const-string/jumbo v0, "lastCreateTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->G:I

    .line 112
    const-string/jumbo v0, "redPointStyle"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->H:I

    .line 113
    const-string/jumbo v0, "isCurrentUserQuit"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->I:I

    .line 114
    const-string/jumbo v0, "memoParseType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->J:I

    .line 115
    const-string/jumbo v0, "lastSenderName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->K:I

    .line 116
    const-string/jumbo v0, "lastSide"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->L:I

    .line 117
    const-string/jumbo v0, "bizRemind"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->M:I

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->r:J

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->s:Z

    .line 120
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleFlag()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->t:I

    goto/16 :goto_0
.end method

.method private static a(Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->c:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 350
    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->w:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 352
    :cond_0
    return-void
.end method

.method private static b(Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->g:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 357
    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 359
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->q:Ljava/util/HashMap;

    .line 126
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;

    .line 162
    iget v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->v:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 163
    iget v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->w:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    packed-switch v9, :pswitch_data_0

    .line 209
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->n:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 210
    sget v0, Lcom/alipay/mobile/socialwidget/R$drawable;->b:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->n:Landroid/graphics/drawable/Drawable;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->n:Landroid/graphics/drawable/Drawable;

    .line 215
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->c:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v3, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 218
    iget v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->x:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 219
    iget v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->G:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 220
    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 221
    invoke-static {v8}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a(Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;)V

    .line 222
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/socialwidget/R$drawable;->p:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 223
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 224
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/socialwidget/R$string;->j:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    .line 238
    :goto_1
    iget v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->z:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 239
    iget v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->y:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    move v1, v0

    .line 240
    :goto_2
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->k:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->p:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->m:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->m:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 241
    :cond_1
    if-eqz v1, :cond_10

    .line 242
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 243
    iget-object v3, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->i:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    move-object v4, v3

    move-object v3, v0

    move v0, v2

    .line 255
    :goto_3
    invoke-virtual {v4, v3, v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->u:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->q:Ljava/util/HashMap;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->q:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->q:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 261
    iget-object v3, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->m:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v3, :cond_17

    .line 262
    iget-object v3, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->m:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->q:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_2
    :goto_5
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->A:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->B:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_1b

    .line 274
    iget v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->K:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 275
    iget v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->J:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 276
    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    .line 277
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 278
    :goto_6
    iget-object v3, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->parser(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :goto_7
    iget v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->C:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_20

    .line 307
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->g:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 311
    :goto_8
    iget v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->D:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    iget v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->E:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    if-lez v2, :cond_21

    .line 314
    invoke-static {v8}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->b(Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;)V

    .line 315
    iget-object v1, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->f:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 331
    :cond_3
    :goto_9
    iget v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->F:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    const/4 v0, 0x1

    .line 332
    :goto_a
    iget-boolean v1, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->n:Z

    if-eq v1, v0, :cond_4

    .line 333
    iput-boolean v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->n:Z

    .line 334
    iget-object v1, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v0, :cond_25

    .line 335
    sget v0, Lcom/alipay/mobile/socialwidget/R$drawable;->h:I

    .line 334
    :goto_b
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setBackgroundResource(I)V

    .line 337
    :cond_4
    return-void

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->i:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 168
    sget v0, Lcom/alipay/mobile/socialwidget/R$drawable;->k:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->i:Landroid/graphics/drawable/Drawable;

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->i:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 173
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    .line 174
    sget v0, Lcom/alipay/mobile/socialwidget/R$drawable;->n:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->j:Landroid/graphics/drawable/Drawable;

    .line 176
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->j:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 179
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 180
    sget v0, Lcom/alipay/mobile/socialwidget/R$drawable;->l:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->k:Landroid/graphics/drawable/Drawable;

    .line 182
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->k:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 185
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 186
    sget v0, Lcom/alipay/mobile/socialwidget/R$drawable;->j:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    .line 188
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 191
    :pswitch_5
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    .line 192
    sget v0, Lcom/alipay/mobile/socialwidget/R$drawable;->m:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->l:Landroid/graphics/drawable/Drawable;

    .line 194
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->l:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 197
    :pswitch_6
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->n:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_a

    .line 198
    sget v0, Lcom/alipay/mobile/socialwidget/R$drawable;->b:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->n:Landroid/graphics/drawable/Drawable;

    .line 200
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->n:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 203
    :pswitch_7
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_b

    .line 204
    sget v0, Lcom/alipay/mobile/socialwidget/R$drawable;->e:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->o:Landroid/graphics/drawable/Drawable;

    .line 206
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->o:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 225
    :cond_c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 226
    invoke-static {v8}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a(Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;)V

    .line 227
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/socialwidget/R$drawable;->f:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 228
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 235
    :cond_d
    :goto_c
    iget-object v10, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    .line 236
    iget-boolean v2, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->s:Z

    iget-wide v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->r:J

    iget v7, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->t:I

    .line 235
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/socialsdk/api/util/DateTimeUtil;->customTime2String(Landroid/content/Context;IZJJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 232
    :cond_e
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_d

    .line 233
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_c

    .line 239
    :cond_f
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_2

    .line 245
    :cond_10
    iget v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->H:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 246
    const-string/jumbo v0, "no"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 247
    iget-object v4, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->i:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    sget-object v3, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    const/4 v0, 0x0

    goto/16 :goto_3

    .line 249
    :cond_11
    iget v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->I:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_13

    const/4 v0, 0x1

    .line 250
    :goto_d
    if-eqz v0, :cond_14

    .line 251
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 255
    :cond_12
    :goto_e
    iget-object v4, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->i:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    const/4 v0, 0x1

    if-ne v2, v0, :cond_15

    move v0, v2

    goto/16 :goto_3

    .line 249
    :cond_13
    const/4 v0, 0x0

    goto :goto_d

    .line 252
    :cond_14
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_12

    .line 253
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_e

    .line 255
    :cond_15
    div-int/lit8 v0, v2, 0x2

    goto/16 :goto_3

    .line 262
    :cond_16
    const/16 v0, 0x8

    goto/16 :goto_4

    .line 264
    :cond_17
    :try_start_1
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->m:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->m:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 277
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 280
    :cond_19
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1c

    .line 282
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->A:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    :cond_1a
    :goto_f
    iget v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->M:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 288
    iget v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->L:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 289
    if-eqz v5, :cond_1f

    .line 290
    if-nez v4, :cond_1e

    const/4 v4, 0x1

    if-le v2, v4, :cond_1e

    .line 291
    new-instance v4, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 293
    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->p:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    const/16 v6, 0x21

    invoke-virtual {v4, v3, v0, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v4

    .line 304
    :cond_1b
    iget-object v3, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 284
    :cond_1c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string/jumbo v3, ""

    goto :goto_f

    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    .line 297
    :cond_1e
    iget-object v4, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 300
    :cond_1f
    iget-object v4, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 309
    :cond_20
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->h:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 317
    :cond_21
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 318
    invoke-static {v8}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->b(Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;)V

    .line 319
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->parser(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->f:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto/16 :goto_9

    .line 322
    :cond_22
    if-eqz v1, :cond_23

    const/4 v0, 0x2

    if-le v2, v0, :cond_23

    const/4 v0, 0x2

    if-ne v0, v9, :cond_23

    .line 323
    invoke-static {v8}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->b(Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;)V

    .line 324
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->h:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 325
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 327
    :cond_23
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, v8, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 331
    :cond_24
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 335
    :cond_25
    sget v0, Lcom/alipay/mobile/socialwidget/R$drawable;->g:I

    goto/16 :goto_b

    .line 165
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 133
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 134
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/socialwidget/R$layout;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;-><init>()V

    .line 140
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->g:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 141
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->i:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 142
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->x:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->c:Landroid/view/ViewStub;

    .line 144
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->l:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 145
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->k:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 146
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->c:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->g:Landroid/view/ViewStub;

    .line 148
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->r:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->i:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 149
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->j:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 151
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->t:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->k:Landroid/view/ViewStub;

    .line 154
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    return-object v1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 341
    return-void
.end method
