.class public Lcom/alipay/mobile/socialsdk/chat/util/ImageBg;
.super Ljava/lang/Object;
.source "ImageBg.java"


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 17
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 18
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 19
    sget v2, Lcom/alipay/mobile/socialsdk/R$drawable;->chat_msg_photo_default_left:I

    .line 18
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/util/ImageBg;->a:Landroid/graphics/Bitmap;

    .line 20
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 21
    sget v2, Lcom/alipay/mobile/socialsdk/R$drawable;->chat_msg_photo_default_right:I

    .line 20
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/ImageBg;->b:Landroid/graphics/Bitmap;

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/util/ImageBg;->c:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getBgimage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/util/ImageBg;->getSid(Ljava/lang/String;)I

    move-result v0

    .line 39
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/ImageBg;->a:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/ImageBg;->b:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getSid(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/ImageBg;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/util/ImageBg;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
