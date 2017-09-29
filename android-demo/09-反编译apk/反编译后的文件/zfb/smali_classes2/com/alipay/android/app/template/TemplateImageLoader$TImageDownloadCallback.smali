.class Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;
.super Ljava/lang/Object;
.source "TemplateImageLoader.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/view/View;

.field c:Ljava/lang/String;

.field d:Z

.field e:Z

.field final synthetic f:Lcom/alipay/android/app/template/TemplateImageLoader;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V
    .locals 1

    .prologue
    .line 259
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->f:Lcom/alipay/android/app/template/TemplateImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;)Lcom/alipay/android/app/template/TemplateImageLoader;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->f:Lcom/alipay/android/app/template/TemplateImageLoader;

    return-object v0
.end method


# virtual methods
.method public onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 281
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;->getRetmsg()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;->getCode()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg$RETCODE;

    move-result-object v0

    .line 283
    sget-object v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg$RETCODE;->REUSE:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg$RETCODE;

    if-eq v0, v1, :cond_0

    .line 284
    sget-object v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg$RETCODE;->CANCEL:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg$RETCODE;

    if-ne v0, v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 289
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Landroid/view/View;

    new-instance v1, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback$1;-><init>(Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->f:Lcom/alipay/android/app/template/TemplateImageLoader;

    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->d:Z

    iget-object v3, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Landroid/view/View;

    iget-boolean v4, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/template/TemplateImageLoader;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Z)Landroid/graphics/drawable/Drawable;

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Landroid/view/View;

    goto :goto_0
.end method

.method public onProcess(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public onSucc(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Landroid/view/View;

    .line 272
    return-void
.end method
