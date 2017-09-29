.class public Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhoneBookAccountListAdapter.java"


# instance fields
.field protected a:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Landroid/graphics/drawable/Drawable;

.field private final e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;Z",
            "Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;->b:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;->c:Ljava/util/List;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;->e:Landroid/view/LayoutInflater;

    .line 30
    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;->a:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->contact_account_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;->d:Landroid/graphics/drawable/Drawable;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 38
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;->e:Landroid/view/LayoutInflater;

    sget v2, Lcom/alipay/mobile/socialsdk/R$layout;->active_binding_account_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 39
    new-instance v3, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter$BindingViewHolder;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter$BindingViewHolder;-><init>(Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;)V

    .line 40
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->head_icon:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    iput-object v1, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter$BindingViewHolder;->mIcon:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    .line 41
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->user_name:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter$BindingViewHolder;->userNameView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 42
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->user_account:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter$BindingViewHolder;->accountView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 43
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->active_flag:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v1, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter$BindingViewHolder;->activeFlagView:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 45
    if-eqz v0, :cond_2

    .line 46
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;->a:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v4, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    iget-object v5, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter$BindingViewHolder;->mIcon:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, v5, v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 48
    iget-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    iget-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    .line 52
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    iget-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    .line 56
    :cond_1
    iget-object v4, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter$BindingViewHolder;->userNameView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter$BindingViewHolder;->accountView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v4, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-boolean v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->active:Z

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter$BindingViewHolder;->activeFlagView:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 64
    :cond_2
    :goto_0
    return-object v2

    .line 61
    :cond_3
    iget-object v0, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter$BindingViewHolder;->activeFlagView:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_0
.end method
