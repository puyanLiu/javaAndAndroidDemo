.class Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;
.super Ljava/lang/Object;
.source "TemplateImageLoader.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;


# instance fields
.field a:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

.field final synthetic b:Lcom/alipay/android/app/template/TemplateImageLoader;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->b:Lcom/alipay/android/app/template/TemplateImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public display(Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 316
    if-nez p2, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    if-nez p1, :cond_5

    .line 320
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->a:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->a:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Landroid/view/View;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->a:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v1, v4}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Landroid/view/View;)V

    .line 327
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->a:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->b(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Lcom/flybird/ILayoutListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 328
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->a:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->b(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Lcom/flybird/ILayoutListener;

    move-result-object v1

    .line 329
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 330
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 328
    invoke-interface {v1, v2, v3}, Lcom/flybird/ILayoutListener;->requestLayout(II)V

    .line 331
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->a:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v1, v4}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Lcom/flybird/ILayoutListener;)V

    .line 333
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->a:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->c(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->a:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->d(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 334
    :cond_3
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 336
    :cond_4
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    move-object v0, p1

    goto :goto_1
.end method
