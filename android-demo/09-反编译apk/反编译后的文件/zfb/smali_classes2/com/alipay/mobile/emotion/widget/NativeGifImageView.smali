.class public Lcom/alipay/mobile/emotion/widget/NativeGifImageView;
.super Lpl/droidsonroids/gif/GifImageView;
.source "NativeGifImageView.java"


# static fields
.field public static final LOOP_INFINITE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

.field private mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifImageView;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->initView()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lpl/droidsonroids/gif/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->initView()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lpl/droidsonroids/gif/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->initView()V

    .line 33
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/alipay/mobile/emotion/widget/GifController;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/widget/GifController;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    .line 47
    return-void
.end method

.method private recyclePreGifDrawable()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v0, :cond_0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    sget-object v1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "recyclePreGifDrawable---->>"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected isAutoLoadGifWhenSetResource()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoPlayAnimation()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/widget/GifController;->isAutoPlayAnimation()Z

    move-result v0

    return v0
.end method

.method public isInPlaying()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/widget/GifController;->isInPlaying()Z

    move-result v0

    return v0
.end method

.method public loadGifByBytes([B)V
    .locals 3

    .prologue
    .line 152
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>([B)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->setGifImageDrawable(Lpl/droidsonroids/gif/GifDrawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    sget-object v1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGifByBytes error--->"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadGifByFile(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 113
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/io/File;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->setGifImageDrawable(Lpl/droidsonroids/gif/GifDrawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGifByFile error--->"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadGifByFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 3

    .prologue
    .line 126
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/io/FileDescriptor;)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->setGifImageDrawable(Lpl/droidsonroids/gif/GifDrawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    sget-object v1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGifByFileDescriptor error--->"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadGifByFilePath(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 100
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->setGifImageDrawable(Lpl/droidsonroids/gif/GifDrawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    sget-object v1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGifByFilePath error--->"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadGifByInputStream(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 139
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/io/InputStream;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->setGifImageDrawable(Lpl/droidsonroids/gif/GifDrawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    sget-object v1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGifByInputStream error--->"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadGifImageByAssetName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 72
    new-instance v1, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v1, v0, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->setGifImageDrawable(Lpl/droidsonroids/gif/GifDrawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    sget-object v1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGifImageByAssetName error--->"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadGifImageByResource(I)V
    .locals 3

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    new-instance v1, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v1, v0, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->setGifImageDrawable(Lpl/droidsonroids/gif/GifDrawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    sget-object v1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGidImageByResource error--->"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lpl/droidsonroids/gif/GifImageView;->onAttachedToWindow()V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/widget/GifController;->setAttachedToWindow(Z)V

    .line 53
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lpl/droidsonroids/gif/GifImageView;->onDetachedFromWindow()V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/widget/GifController;->setAttachedToWindow(Z)V

    .line 62
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->recyclePreGifDrawable()V

    .line 63
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 223
    :try_start_0
    invoke-super {p0, p1}, Lpl/droidsonroids/gif/GifImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    sget-object v1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDraw--->>"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAutoPlayAnimation(Z)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/widget/GifController;->setAutoPlayAnimation(Z)V

    .line 231
    return-void
.end method

.method public setGifAnimationListener(Lcom/alipay/mobile/emotion/widget/GifAnimationListener;)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/widget/GifController;->setGifAnimationListener(Lcom/alipay/mobile/emotion/widget/GifAnimationListener;)V

    .line 255
    return-void
.end method

.method public setGifImageDrawable(Lpl/droidsonroids/gif/GifDrawable;)V
    .locals 3

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->recyclePreGifDrawable()V

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V

    .line 184
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    sget-object v1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setGifImageDrawable---->>"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 212
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->recyclePreGifDrawable()V

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/widget/GifController;->setInPlaying(Z)V

    .line 214
    invoke-super {p0, p1}, Lpl/droidsonroids/gif/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    sget-object v1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setImageBitmap error--->>"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 3

    .prologue
    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->recyclePreGifDrawable()V

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/widget/GifController;->setInPlaying(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-super {p0, v0}, Lpl/droidsonroids/gif/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    sget-object v1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setImageResource error--->>"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMaxLoop(I)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/widget/GifController;->setMaxLoop(I)V

    .line 247
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/widget/GifController;->resetCurrentLoop()V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    sget-object v1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "start error--->>"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->stopAnimationWithoutNotify()V

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifController:Lcom/alipay/mobile/emotion/widget/GifController;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/widget/GifController;->onGifAnimationTerminate()V

    .line 271
    return-void
.end method

.method public stopAnimationWithoutNotify()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->getCurrentPosition()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->stop()V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifDrawable;->seekTo(I)V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    sget-object v1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stop error--->>"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
