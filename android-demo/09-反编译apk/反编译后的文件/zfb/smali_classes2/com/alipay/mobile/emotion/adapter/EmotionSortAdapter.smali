.class public Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmotionSortAdapter.java"


# instance fields
.field private final imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private final mActivity:Landroid/app/Activity;

.field private mEmoiPackageModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;"
        }
    .end annotation
.end field


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
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mEmoiPackageModelList:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mActivity:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mEmoiPackageModelList:Ljava/util/List;

    .line 33
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 35
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 32
    iput-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 36
    return-void
.end method


# virtual methods
.method public dragItem(II)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mEmoiPackageModelList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mEmoiPackageModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mEmoiPackageModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mEmoiPackageModelList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 106
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mEmoiPackageModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mEmoiPackageModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mEmoiPackageModelList:Ljava/util/List;

    .line 76
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 77
    if-nez p2, :cond_0

    .line 79
    new-instance v2, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;)V

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 81
    sget v3, Lcom/alipay/android/phone/emotion/R$layout;->emotion_sort_item:I

    .line 80
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->img_emoi_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 82
    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter$ViewHolder;->emtionIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 85
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->emoi_package_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 84
    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter$ViewHolder;->emoiName:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 87
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->drag_icon_id:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 86
    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter$ViewHolder;->emotionDrag:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 88
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 92
    :goto_0
    iget-object v2, v1, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter$ViewHolder;->emoiName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 95
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->getbIconFid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter$ViewHolder;->emtionIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 94
    invoke-virtual {v2, v0, v1, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 97
    return-object p2

    .line 90
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter$ViewHolder;

    goto :goto_0
.end method

.method public getmEmoiPackageModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mEmoiPackageModelList:Ljava/util/List;

    return-object v0
.end method

.method public insert(Lcom/alipay/mobile/emotion/model/EmoiPackageModel;I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mEmoiPackageModelList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method

.method public remove(I)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mEmoiPackageModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->notifyDataSetChanged()V

    .line 56
    return-void
.end method

.method public setmEmoiPackageModelList(Ljava/util/List;)V
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
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->mEmoiPackageModelList:Ljava/util/List;

    .line 70
    return-void
.end method
