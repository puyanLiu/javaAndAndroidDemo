.class public Lcom/alipay/mobile/beehive/photo/test/PhotoThumbTestActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "PhotoThumbTestActivity.java"


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
    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

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
    .line 23
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v0, Lcom/alipay/mobile/beehive/R$layout;->activity_photo_thumb_test:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/test/PhotoThumbTestActivity;->setContentView(I)V

    .line 25
    sget v0, Lcom/alipay/mobile/beehive/R$id;->photo_thumb:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/test/PhotoThumbTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;

    .line 26
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/test/PhotoThumbTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "contextIndex"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->get(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/data/PhotoContext;

    move-result-object v2

    .line 28
    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->remove(Ljava/lang/String;)V

    .line 29
    iget-object v1, v2, Lcom/alipay/mobile/beehive/photo/data/PhotoContext;->photoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->setImagesData(Ljava/util/List;)V

    .line 30
    new-instance v1, Lcom/alipay/mobile/beehive/photo/test/PhotoThumbTestActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/photo/test/PhotoThumbTestActivity$1;-><init>(Lcom/alipay/mobile/beehive/photo/test/PhotoThumbTestActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
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
