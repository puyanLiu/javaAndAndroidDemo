.class public Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "GroupListMainCursorAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field protected a:I

.field protected b:Z

.field protected c:Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/view/LayoutInflater;

.field private final e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 34
    invoke-direct {p0, p1, p3, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 26
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->f:I

    .line 27
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->g:I

    .line 28
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->h:I

    .line 29
    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->a:I

    .line 30
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->b:Z

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->d:Landroid/view/LayoutInflater;

    .line 36
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 37
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->ic_default_group:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->c:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-direct {p0, p3}, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 39
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "groupImg"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->f:I

    .line 43
    const-string/jumbo v0, "aliasGroupName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->g:I

    .line 44
    const-string/jumbo v0, "groupName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->h:I

    .line 45
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->b:Z

    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v0, "desc"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->a:I

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter$ViewHolder;

    .line 77
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->f:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v3, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 79
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->h:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->g:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 81
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->g:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_0
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 84
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->b:Z

    if-eqz v2, :cond_2

    .line 85
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->a:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->single_list_item_withhead:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter$ViewHolder;-><init>()V

    .line 67
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 68
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 69
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_desc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    return-object v1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public swapCursorWithSearching(Landroid/database/Cursor;Z)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 51
    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->b:Z

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
