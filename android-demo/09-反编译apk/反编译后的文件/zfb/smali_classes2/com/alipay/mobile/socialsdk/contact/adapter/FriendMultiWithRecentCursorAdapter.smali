.class public Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;
.super Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;
.source "FriendMultiWithRecentCursorAdapter.java"


# instance fields
.field protected c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/lang/String;

.field private v:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;II)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;I)V

    .line 29
    iput p5, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->v:I

    .line 30
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->recent_input_title:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->e:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;

    .line 67
    const-string/jumbo v1, "headImageUrl"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 69
    sget v6, Lcom/alipay/mobile/socialsdk/R$drawable;->contact_account_icon:I

    .line 68
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 70
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 73
    const-string/jumbo v1, "_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->d:Ljava/util/Set;

    if-nez v1, :cond_1

    move v1, v2

    .line 75
    :goto_0
    if-eqz v1, :cond_2

    .line 76
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setChecked(Z)V

    .line 77
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setEnabled(Z)V

    .line 83
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 84
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->q:Z

    if-eqz v1, :cond_5

    .line 85
    if-nez v3, :cond_4

    .line 86
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 87
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->r:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_2
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->p:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->o:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 141
    :cond_0
    :goto_3
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->d:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->c:Ljava/util/Set;

    if-nez v1, :cond_3

    move v1, v2

    .line 80
    :goto_4
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setChecked(Z)V

    .line 81
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setEnabled(Z)V

    goto :goto_1

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->c:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    .line 89
    :cond_4
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_2

    .line 99
    :cond_5
    const-string/jumbo v1, "remarkName"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 101
    const-string/jumbo v1, "nickName"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 104
    const-string/jumbo v1, "name"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 107
    const-string/jumbo v1, "displayName"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_8
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->v:I

    if-ge v3, v1, :cond_a

    .line 111
    if-nez v3, :cond_9

    .line 112
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 113
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 115
    :cond_9
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 117
    :cond_a
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->t:I

    iget v4, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->v:I

    add-int/2addr v1, v4

    if-ge v3, v1, :cond_c

    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->v:I

    if-lt v3, v1, :cond_c

    .line 118
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->v:I

    if-ne v3, v1, :cond_b

    .line 119
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 120
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 122
    :cond_b
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 125
    :cond_c
    const-string/jumbo v1, "firstAlphaChar"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->t:I

    iget v5, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->v:I

    add-int/2addr v1, v5

    if-eq v3, v1, :cond_d

    .line 127
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 131
    const-string/jumbo v3, "firstAlphaChar"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 133
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 135
    :cond_d
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 136
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->multi_list_item_withhead:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 54
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;-><init>()V

    .line 55
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 56
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 57
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_head_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 58
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->selected_check_box:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckBox;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    .line 59
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_desc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
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
    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->c:Ljava/util/Set;

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method public setOriginalSelected(Ljava/util/Set;)V
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
    .line 34
    if-eqz p1, :cond_0

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->d:Ljava/util/Set;

    .line 37
    :cond_0
    return-void
.end method

.method public swapCursorWithSearching(Landroid/database/Cursor;IIZ)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 45
    iput p3, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->v:I

    .line 46
    iput p2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->t:I

    .line 47
    iput-boolean p4, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->q:Z

    .line 48
    invoke-virtual {p0, p1, p2, p4}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->swapCursorWithSearching(Landroid/database/Cursor;IZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
