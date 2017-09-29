.class public Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "MemberSingleCursorAdapter.java"


# instance fields
.field protected c:Landroid/view/LayoutInflater;

.field protected d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:Z

.field protected m:Landroid/graphics/drawable/Drawable;

.field protected n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;",
            "Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;",
            "Landroid/database/Cursor;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 43
    invoke-direct {p0, p1, p3, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 29
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->e:I

    .line 30
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->f:I

    .line 31
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->g:I

    .line 32
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->h:I

    .line 33
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->i:I

    .line 34
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->j:I

    .line 35
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->k:I

    .line 36
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->l:Z

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->c:Landroid/view/LayoutInflater;

    .line 45
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 46
    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->n:Ljava/util/HashMap;

    .line 47
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->contact_account_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-direct {p0, p3}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 49
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "headImageUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->e:I

    .line 58
    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->f:I

    .line 59
    const-string/jumbo v0, "nickName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->g:I

    .line 60
    const-string/jumbo v0, "remarkName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->h:I

    .line 61
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->i:I

    .line 62
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->l:Z

    if-eqz v0, :cond_0

    .line 63
    const-string/jumbo v0, "searchDesc"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->j:I

    .line 64
    const-string/jumbo v0, "displayName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->k:I

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;

    .line 91
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->e:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v3, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 93
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 94
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->l:Z

    if-eqz v1, :cond_1

    .line 96
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->k:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->j:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->h:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    iget v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->i:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->n:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    .line 111
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->g:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->f:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    :cond_4
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->single_list_item_withhead:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;-><init>()V

    .line 80
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 81
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 82
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_head_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 83
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_desc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 84
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    return-object v1
.end method

.method public swapCursorWithSearching(Landroid/database/Cursor;Z)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 69
    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->l:Z

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
