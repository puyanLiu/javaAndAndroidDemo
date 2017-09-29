.class public Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;
.super Lcom/alipay/mobile/beehive/photo/data/PhotoAdapter;
.source "BucketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/beehive/photo/data/PhotoAdapter",
        "<",
        "Lcom/alipay/mobile/beehive/photo/data/BucketInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/photo/data/BucketInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/photo/data/PhotoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/16 v7, 0x8

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 32
    if-nez p2, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 34
    sget v1, Lcom/alipay/mobile/beehive/R$layout;->album_item:I

    .line 33
    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 37
    :cond_0
    invoke-static {p2}, Lcom/alipay/mobile/beehive/photo/util/ViewHolder;->get(Landroid/view/View;)Lcom/alipay/mobile/beehive/photo/util/ViewHolder;

    move-result-object v3

    .line 39
    sget v0, Lcom/alipay/mobile/beehive/R$id;->iv_album:I

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/beehive/photo/util/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 40
    sget v1, Lcom/alipay/mobile/beehive/R$id;->iv_selected:I

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/beehive/photo/util/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 41
    sget v2, Lcom/alipay/mobile/beehive/R$id;->tv_album_name:I

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/beehive/photo/util/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    sget v4, Lcom/alipay/mobile/beehive/R$id;->tv_album_count:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/beehive/photo/util/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;->dataList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;

    .line 45
    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/data/BucketAdapter;->context:Landroid/content/Context;

    const/16 v8, 0x7d

    invoke-static {v5, v8}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->dp2px(Landroid/content/Context;I)I

    move-result v5

    .line 47
    invoke-static {v5}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->reorderSize(I)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    move-result-object v5

    .line 49
    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->getPhoto()Lcom/alipay/mobile/beehive/service/PhotoInfo;

    move-result-object v8

    .line 50
    invoke-virtual {v8}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->isVideo()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 51
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    .line 52
    const-class v9, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    .line 51
    invoke-virtual {v8}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v0, v10, v10}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->loadAlbumVideo(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V

    .line 57
    :goto_0
    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$string;->unit_pic:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-object p2

    .line 55
    :cond_1
    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->getPhoto()Lcom/alipay/mobile/beehive/service/PhotoInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v9

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v5

    invoke-static {v0, v8, v10, v9, v5}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->load(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_0

    :cond_2
    move v0, v7

    .line 57
    goto :goto_1

    :cond_3
    move v6, v7

    .line 59
    goto :goto_2
.end method
