.class Lcom/alipay/android/app/template/TemplateImageLoader$TImagePlugin;
.super Ljava/lang/Object;
.source "TemplateImageLoader.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;


# instance fields
.field a:I

.field b:Landroid/view/View;

.field c:Z

.field final synthetic d:Lcom/alipay/android/app/template/TemplateImageLoader;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V
    .locals 1

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImagePlugin;->d:Lcom/alipay/android/app/template/TemplateImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImagePlugin;->c:Z

    return-void
.end method


# virtual methods
.method public getPluginKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string/jumbo v0, "TemplateImagePlugin"

    return-object v0
.end method

.method public process(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 247
    .line 248
    iget v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImagePlugin;->a:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImagePlugin;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImagePlugin;->b:Landroid/view/View;

    iget v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImagePlugin;->a:I

    invoke-static {p2, v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->blur(Landroid/graphics/Bitmap;Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 251
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImagePlugin;->c:Z

    if-eqz v0, :cond_1

    .line 252
    invoke-static {p2}, Lcom/alipay/android/app/template/util/UiUtil;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 254
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImagePlugin;->b:Landroid/view/View;

    .line 255
    return-object p2
.end method
