.class public Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SingleRecentCursorAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;Z)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 27
    iput v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->e:I

    .line 28
    iput v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->f:I

    .line 29
    iput v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->g:I

    .line 30
    iput v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->h:I

    .line 31
    iput v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->i:I

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->a:Landroid/view/LayoutInflater;

    .line 37
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 38
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->recent_chat_title:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->c:Ljava/lang/String;

    .line 39
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->recent_contact_title:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->d:Ljava/lang/String;

    .line 40
    iput-boolean p4, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->j:Z

    .line 41
    invoke-direct {p0, p3}, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 42
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->j:Z

    if-eqz v0, :cond_0

    .line 51
    const-string/jumbo v0, "headImageUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->g:I

    .line 52
    const-string/jumbo v0, "displayName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->h:I

    .line 53
    const-string/jumbo v0, "searchDesc"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->i:I

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string/jumbo v0, "icon"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->e:I

    .line 56
    const-string/jumbo v0, "displayName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->f:I

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;

    .line 83
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->j:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->g:I

    :goto_0
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 85
    sget v5, Lcom/alipay/mobile/socialsdk/R$drawable;->contact_account_icon:I

    .line 84
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 86
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 88
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 89
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->j:Z

    if-eqz v2, :cond_3

    .line 90
    if-nez v1, :cond_2

    .line 91
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 92
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_1
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->h:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->i:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 113
    :cond_0
    :goto_2
    return-void

    .line 83
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->e:I

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_1

    .line 104
    :cond_3
    if-nez v1, :cond_4

    .line 105
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 106
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_3
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->f:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 108
    :cond_4
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->single_list_item_withhead:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;-><init>()V

    .line 72
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 73
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 74
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_desc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 75
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_head_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 76
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    return-object v1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public swapCursorWithSearching(Landroid/database/Cursor;Z)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 61
    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->j:Z

    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
