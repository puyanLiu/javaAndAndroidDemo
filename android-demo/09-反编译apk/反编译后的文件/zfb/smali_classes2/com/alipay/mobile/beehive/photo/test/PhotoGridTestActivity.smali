.class public Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "PhotoGridTestActivity.java"


# instance fields
.field private photoInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;->photoInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;->photoInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lcom/alipay/mobile/beehive/R$layout;->activity_photo_grid_test:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;->setContentView(I)V

    .line 30
    sget v0, Lcom/alipay/mobile/beehive/R$id;->grid_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;

    .line 31
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "contextIndex"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->get(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    move-result-object v2

    .line 33
    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->remove(Ljava/lang/String;)V

    .line 34
    iget-object v1, v2, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->setImagesData(Ljava/util/List;)V

    .line 35
    new-instance v1, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity$1;-><init>(Lcom/alipay/mobile/beehive/photo/test/PhotoGridTestActivity;Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->setOnItemClickListener(Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$OnItemClickListener;)V

    .line 72
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
