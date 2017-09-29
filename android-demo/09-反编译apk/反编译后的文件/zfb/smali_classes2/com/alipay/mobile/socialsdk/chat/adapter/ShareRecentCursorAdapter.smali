.class public Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "ShareRecentCursorAdapter.java"


# instance fields
.field protected a:Landroid/view/LayoutInflater;

.field protected b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field protected c:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

.field protected d:Z

.field protected e:I

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private final m:Landroid/graphics/drawable/Drawable;

.field private final n:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 41
    invoke-direct {p0, p1, p3, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 27
    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->i:I

    .line 28
    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->j:I

    .line 29
    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->k:I

    .line 30
    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->l:I

    .line 32
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->d:Z

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->c:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->a:Landroid/view/LayoutInflater;

    .line 44
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 45
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->d:Z

    .line 46
    invoke-direct {p0, p3}, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->c:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->chat_contact_title:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->f:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->c:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->group_title:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->g:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->c:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->recent_title:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->h:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->c:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->contact_account_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->c:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->ic_default_group:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->n:Landroid/graphics/drawable/Drawable;

    .line 52
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->d:Z

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "itemType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->k:I

    .line 57
    const-string/jumbo v0, "icon"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->i:I

    .line 58
    const-string/jumbo v0, "displayName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->j:I

    .line 59
    const-string/jumbo v0, "desc"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->l:I

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string/jumbo v0, "itemType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->k:I

    .line 62
    const-string/jumbo v0, "icon"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->i:I

    .line 63
    const-string/jumbo v0, "displayName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->j:I

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;

    .line 94
    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->i:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->k:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 97
    packed-switch v1, :pswitch_data_0

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    .line 108
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v3, v2, v4, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 109
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 110
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->d:Z

    if-nez v1, :cond_2

    .line 111
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-nez v1, :cond_1

    .line 112
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 113
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_1
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->j:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    :goto_2
    return-void

    .line 99
    :pswitch_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->n:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_1

    .line 119
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 120
    iget v2, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->e:I

    if-ge v1, v2, :cond_4

    .line 121
    if-nez v1, :cond_3

    .line 122
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 123
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :goto_3
    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->j:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget v1, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->l:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_2

    .line 125
    :cond_3
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_3

    .line 127
    :cond_4
    iget v2, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->e:I

    if-ne v1, v2, :cond_5

    .line 128
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 129
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 131
    :cond_5
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_3

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->item_share_contact:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    new-instance v2, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;-><init>()V

    .line 83
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 84
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 85
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_head_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 86
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_desc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 87
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    return-object v1
.end method

.method public swapCursorWithSearching(Landroid/database/Cursor;IZ)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 73
    iput-boolean p3, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->d:Z

    .line 74
    iput p2, p0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->e:I

    .line 75
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
