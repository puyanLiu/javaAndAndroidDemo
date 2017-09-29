.class public Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmotionTabBarAdapter.java"


# instance fields
.field private final imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private final inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->list:Ljava/util/List;

    .line 32
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 34
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 31
    iput-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;)Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$OnItemClickListener;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->mOnItemClickListener:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->getItem(I)Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 64
    if-nez p2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/android/phone/emotion/R$layout;->emotion_tab_item:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :cond_0
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->tab_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 69
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->iv_new:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 70
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 71
    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;

    .line 72
    iget-object v3, v2, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget v3, v3, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->iconResourceId:I

    if-eqz v3, :cond_3

    .line 73
    iget-object v3, v2, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget v3, v3, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->iconResourceId:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 74
    const-string/jumbo v0, "store"

    iget-object v3, v2, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v3, v3, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const-string/jumbo v0, "true"

    const-string/jumbo v3, "store_new"

    invoke-static {v3}, Lcom/alipay/mobile/emotion/util/StorageHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 90
    :cond_1
    :goto_0
    sget v0, Lcom/alipay/android/phone/emotion/R$drawable;->emotion_tab_normal:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 91
    new-instance v0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$1;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$1;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-object p2

    .line 79
    :cond_2
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object v1, v2, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v1, v1, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getZipIconFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 85
    iget-object v3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v3, v1, v0, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v3, v2, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v3, v3, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->bIconFid:Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->TYPE_COUNT:I

    return v0
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->list:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter;->mOnItemClickListener:Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$OnItemClickListener;

    .line 111
    return-void
.end method
