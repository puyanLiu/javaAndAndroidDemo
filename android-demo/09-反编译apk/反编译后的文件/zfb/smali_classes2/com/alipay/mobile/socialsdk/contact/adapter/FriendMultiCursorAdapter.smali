.class public Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;
.super Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;
.source "FriendMultiCursorAdapter.java"


# instance fields
.field protected a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;

    .line 59
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->i:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1, v4, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 61
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 63
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->n:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->b:Ljava/util/Set;

    if-nez v1, :cond_1

    move v1, v2

    .line 65
    :goto_0
    if-eqz v1, :cond_2

    .line 66
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setChecked(Z)V

    .line 67
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setEnabled(Z)V

    .line 73
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 74
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->q:Z

    if-eqz v1, :cond_5

    .line 75
    if-nez v3, :cond_4

    .line 76
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 77
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->r:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_2
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->p:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->o:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 121
    :cond_0
    :goto_3
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->b:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->a:Ljava/util/Set;

    if-nez v1, :cond_3

    move v1, v2

    .line 70
    :goto_4
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setChecked(Z)V

    .line 71
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setEnabled(Z)V

    goto :goto_1

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->a:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    .line 79
    :cond_4
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_2

    .line 89
    :cond_5
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->l:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 91
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->k:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 94
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->j:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_7
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->t:I

    if-ge v3, v1, :cond_9

    .line 98
    if-nez v3, :cond_8

    .line 99
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 100
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 102
    :cond_8
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_3

    .line 105
    :cond_9
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->m:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->t:I

    if-eq v3, v1, :cond_a

    .line 107
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 111
    iget v3, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->m:I

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 113
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 115
    :cond_a
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 116
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->multi_list_item_withhead:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 46
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;-><init>()V

    .line 47
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 48
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 49
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_desc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 50
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_head_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 51
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->selected_check_box:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckBox;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    return-object v1
.end method

.method public refreshSelected(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->a:Ljava/util/Set;

    .line 40
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->notifyDataSetChanged()V

    .line 41
    return-void
.end method

.method public setOriginalSelected(Ljava/util/List;)V
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
    .line 33
    if-eqz p1, :cond_0

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->b:Ljava/util/Set;

    .line 36
    :cond_0
    return-void
.end method
