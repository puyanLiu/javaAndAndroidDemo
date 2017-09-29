.class public Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "FriendSingleCursorAdapter.java"


# instance fields
.field protected f:Landroid/view/LayoutInflater;

.field protected g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field protected h:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:Z

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:I

.field protected u:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 44
    invoke-direct {p0, p1, p3, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 27
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->i:I

    .line 28
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->j:I

    .line 29
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->k:I

    .line 30
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->l:I

    .line 31
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->m:I

    .line 32
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->n:I

    .line 33
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->o:I

    .line 34
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->p:I

    .line 36
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->q:Z

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->h:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 46
    iput p4, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->t:I

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->f:Landroid/view/LayoutInflater;

    .line 48
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 49
    invoke-direct {p0, p3}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->h:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->contact_list_name:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->r:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->h:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->star_title:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->s:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->contact_account_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->u:Landroid/graphics/drawable/Drawable;

    .line 53
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "headImageUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->i:I

    .line 57
    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->j:I

    .line 58
    const-string/jumbo v0, "nickName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->k:I

    .line 59
    const-string/jumbo v0, "remarkName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->l:I

    .line 60
    const-string/jumbo v0, "firstAlphaChar"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->m:I

    .line 61
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->n:I

    .line 62
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->q:Z

    if-eqz v0, :cond_0

    .line 63
    const-string/jumbo v0, "searchDesc"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->o:I

    .line 64
    const-string/jumbo v0, "displayName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->p:I

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;

    .line 97
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->i:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v3, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 99
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 101
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 102
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->q:Z

    if-eqz v1, :cond_2

    .line 103
    if-nez v2, :cond_1

    .line 104
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 105
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->p:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->o:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 149
    :cond_0
    :goto_1
    return-void

    .line 107
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_0

    .line 117
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->l:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->k:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->j:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_4
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->t:I

    if-ge v2, v1, :cond_6

    .line 126
    if-nez v2, :cond_5

    .line 127
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 128
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 130
    :cond_5
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_1

    .line 133
    :cond_6
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->m:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->t:I

    if-eq v2, v1, :cond_7

    .line 135
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 139
    iget v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->m:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 141
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_1

    .line 143
    :cond_7
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 144
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 70
    int-to-long v0, p1

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->single_list_item_withhead:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 85
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;-><init>()V

    .line 86
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 87
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 88
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_head_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 89
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_desc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 90
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    return-object v1
.end method

.method public swapCursorWithSearching(Landroid/database/Cursor;IZ)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 74
    iput-boolean p3, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->q:Z

    .line 75
    iput p2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->t:I

    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
