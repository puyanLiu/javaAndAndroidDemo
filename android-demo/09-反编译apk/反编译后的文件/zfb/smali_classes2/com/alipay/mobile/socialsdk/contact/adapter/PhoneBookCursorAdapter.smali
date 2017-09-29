.class public Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;
.super Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;
.source "PhoneBookCursorAdapter.java"


# instance fields
.field protected d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field protected e:Landroid/view/LayoutInflater;

.field protected f:Landroid/app/Activity;

.field protected g:Z

.field protected h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 34
    invoke-direct {p0, p1, p3, v1}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 25
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->i:I

    .line 26
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->j:I

    .line 27
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->h:I

    .line 28
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->k:I

    .line 29
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->l:I

    .line 30
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->m:I

    .line 31
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->n:I

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->f:Landroid/app/Activity;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->e:Landroid/view/LayoutInflater;

    .line 37
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 38
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->g:Z

    .line 39
    invoke-direct {p0, p3}, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 40
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "headImageUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->i:I

    .line 44
    const-string/jumbo v0, "phoneName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->j:I

    .line 45
    const-string/jumbo v0, "phoneNo"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->h:I

    .line 46
    const-string/jumbo v0, "mobileFirstChar"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->k:I

    .line 47
    const-string/jumbo v0, "matchedAccounts"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->l:I

    .line 48
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->g:Z

    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v0, "searchPhoneName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->m:I

    .line 50
    const-string/jumbo v0, "searchPhoneNo"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->n:I

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;

    .line 71
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->i:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    iget v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->j:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    iget v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->k:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    iget v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->l:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 75
    iget v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->h:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 77
    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    const-string/jumbo v7, ""

    iget-object v8, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 79
    sget v10, Lcom/alipay/mobile/socialsdk/R$drawable;->contact_account_icon:I

    .line 78
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v7, v8, v9}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 85
    :goto_0
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->g:Z

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 87
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->m:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->n:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    :goto_1
    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->g:Z

    if-eqz v3, :cond_4

    .line 106
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_2
    if-lez v5, :cond_5

    .line 114
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 118
    :goto_3
    return-void

    .line 81
    :cond_0
    iget-object v7, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v8, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 82
    sget v10, Lcom/alipay/mobile/socialsdk/R$drawable;->contact_account_icon:I

    .line 81
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v1, v8, v9}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0

    .line 90
    :cond_1
    if-nez v6, :cond_2

    .line 91
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 92
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    .line 94
    :cond_2
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 95
    iget v6, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->k:I

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 97
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 98
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    .line 100
    :cond_3
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    .line 109
    :cond_4
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 116
    :cond_5
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->e:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->phone_item_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 123
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;)V

    .line 125
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->new_item:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 126
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 127
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_head_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 128
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->contact_item_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 129
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->concast_from:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 130
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->aliaccount_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 131
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    return-object v1
.end method

.method public swapCursorWithSearching(Landroid/database/Cursor;Z)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 55
    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->g:Z

    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
