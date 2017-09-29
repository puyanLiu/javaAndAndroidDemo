.class public Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;
.super Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;
.source "MemberMultiCursorAdapter.java"


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
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;Ljava/util/HashMap;)V
    .locals 0
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
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;Ljava/util/HashMap;)V

    .line 30
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;

    .line 57
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->e:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1, v4, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 59
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 61
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->l:Z

    if-eqz v1, :cond_1

    .line 62
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->k:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->j:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 86
    :cond_0
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->i:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->b:Ljava/util/Set;

    if-nez v1, :cond_5

    move v1, v2

    .line 88
    :goto_1
    if-eqz v1, :cond_6

    .line 89
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setChecked(Z)V

    .line 90
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setEnabled(Z)V

    .line 96
    :goto_2
    return-void

    .line 70
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->h:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    iget v3, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->i:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->n:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    .line 77
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->g:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->f:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_4
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->b:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 92
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->a:Ljava/util/Set;

    if-nez v1, :cond_7

    move v1, v2

    .line 93
    :goto_3
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setChecked(Z)V

    .line 94
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setEnabled(Z)V

    goto :goto_2

    .line 92
    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->a:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->multi_list_item_withhead:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;-><init>()V

    .line 45
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 46
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemTitleText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 47
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_desc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemDescText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 48
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_item_head_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mItemHeadText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 49
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->selected_check_box:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckBox;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter$ViewHolder;->mSelectedCheckBox:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
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
    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->a:Ljava/util/Set;

    .line 34
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->notifyDataSetChanged()V

    .line 35
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
    .line 37
    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->b:Ljava/util/Set;

    .line 40
    :cond_0
    return-void
.end method
