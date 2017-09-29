.class Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;
.super Ljava/lang/Object;
.source "TemplateImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;->a:Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 292
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;->a:Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;

    iget-object v0, v0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;->a:Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;

    iget-object v0, v0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;->a:Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->a(Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;)Lcom/alipay/android/app/template/TemplateImageLoader;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateImageLoader;->a(Lcom/alipay/android/app/template/TemplateImageLoader;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;->a:Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;

    iget-object v1, v1, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;->a:Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->a(Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;)Lcom/alipay/android/app/template/TemplateImageLoader;

    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;->a:Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;

    iget-object v0, v0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;->a:Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;

    iget-object v1, v1, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;->a:Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;

    iget-boolean v2, v2, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->d:Z

    iget-object v3, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;->a:Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;

    iget-object v3, v3, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Landroid/view/View;

    iget-object v4, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;->a:Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;

    iget-boolean v4, v4, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/template/TemplateImageLoader;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Z)Landroid/graphics/drawable/Drawable;

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;->a:Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Landroid/view/View;

    goto :goto_0
.end method
