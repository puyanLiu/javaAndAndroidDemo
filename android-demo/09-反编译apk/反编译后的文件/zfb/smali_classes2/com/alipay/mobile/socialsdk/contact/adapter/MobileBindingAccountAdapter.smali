.class public Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;
.super Landroid/widget/BaseAdapter;
.source "MobileBindingAccountAdapter.java"


# instance fields
.field protected a:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private final e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->d:Z

    .line 32
    iput-boolean p3, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->d:Z

    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->b:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->c:Ljava/util/List;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->e:Landroid/view/LayoutInflater;

    .line 36
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 37
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->a:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;

    .line 44
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->e:Landroid/view/LayoutInflater;

    sget v2, Lcom/alipay/mobile/socialsdk/R$layout;->active_binding_account_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 45
    new-instance v3, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter$BindingViewHolder;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter$BindingViewHolder;-><init>(Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;)V

    .line 46
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->head_icon:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    iput-object v1, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter$BindingViewHolder;->mIcon:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    .line 47
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->user_name:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter$BindingViewHolder;->userNameView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 48
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->user_account:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter$BindingViewHolder;->accountView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 49
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->active_flag:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v1, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter$BindingViewHolder;->activeFlagView:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 51
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->a:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v4, v0, Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;->headUrl:Ljava/lang/String;

    iget-object v5, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter$BindingViewHolder;->mIcon:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 53
    sget v7, Lcom/alipay/mobile/socialsdk/R$drawable;->contact_account_icon:I

    .line 52
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 54
    iget-object v1, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter$BindingViewHolder;->userNameView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v4, v0, Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;->showName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter$BindingViewHolder;->accountView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v4, v0, Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;->userAccount:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-boolean v0, v0, Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;->active:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter;->d:Z

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter$BindingViewHolder;->activeFlagView:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 62
    :cond_0
    :goto_0
    return-object v2

    .line 59
    :cond_1
    iget-object v0, v3, Lcom/alipay/mobile/socialsdk/contact/adapter/MobileBindingAccountAdapter$BindingViewHolder;->activeFlagView:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_0
.end method
