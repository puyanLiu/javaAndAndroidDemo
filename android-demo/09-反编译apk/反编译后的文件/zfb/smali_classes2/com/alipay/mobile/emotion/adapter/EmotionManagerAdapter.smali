.class public Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmotionManagerAdapter.java"


# instance fields
.field private final imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private localCachePackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;->mActivity:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;->localCachePackageList:Ljava/util/List;

    .line 42
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 45
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 41
    iput-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 46
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;->localCachePackageList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;->localCachePackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;->localCachePackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;->localCachePackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;->localCachePackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 123
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;->localCachePackageList:Ljava/util/List;

    .line 52
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 53
    if-nez p2, :cond_0

    .line 55
    new-instance v2, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$ViewHolder;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 57
    sget v3, Lcom/alipay/android/phone/emotion/R$layout;->emotion_manager_item:I

    .line 56
    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->emoi_avatar:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$ViewHolder;->emoiIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 60
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->emoi_package_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 59
    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$ViewHolder;->emoiName:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 62
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->btn_delete_emoi:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APButton;

    .line 61
    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$ViewHolder;->emoiDeleteBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 63
    sget v1, Lcom/alipay/android/phone/emotion/R$layout;->emotion_manager_item:I

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v1, v2

    .line 67
    :goto_0
    iget-object v2, v1, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$ViewHolder;->emoiName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->getbIconFid()Ljava/lang/String;

    move-result-object v3

    .line 70
    iget-object v4, v1, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$ViewHolder;->emoiIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 69
    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 71
    iget-object v1, v1, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$ViewHolder;->emoiDeleteBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v2, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$1;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;Lcom/alipay/mobile/emotion/model/EmoiPackageModel;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v1, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$2;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;Lcom/alipay/mobile/emotion/model/EmoiPackageModel;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-object p2

    .line 65
    :cond_0
    sget v1, Lcom/alipay/android/phone/emotion/R$layout;->emotion_manager_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$ViewHolder;

    goto :goto_0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;->localCachePackageList:Ljava/util/List;

    .line 132
    return-void
.end method
