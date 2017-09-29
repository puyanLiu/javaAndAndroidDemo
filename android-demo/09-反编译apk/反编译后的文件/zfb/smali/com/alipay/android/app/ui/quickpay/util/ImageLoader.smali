.class public Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$1;,
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageFormater;,
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageUrl;,
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageAsyncTask;,
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;,
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;,
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;,
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static b:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string/jumbo v0, "(\\?|&)biztype=([^&]*)(&|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    .line 101
    :cond_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    return-object v0
.end method

.method static synthetic a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static b(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/16 v6, 0x40

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 234
    if-nez p0, :cond_1

    .line 269
    :cond_0
    :goto_0
    :pswitch_0
    return-object p1

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->b()Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->a()[I

    move-result-object v1

    .line 242
    if-eqz v0, :cond_0

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->None:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    if-eq v0, v2, :cond_0

    .line 247
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 252
    aget v2, v1, v4

    if-gtz v2, :cond_2

    .line 253
    aput v6, v1, v4

    .line 256
    :cond_2
    aget v2, v1, v5

    if-gtz v2, :cond_3

    .line 257
    aput v6, v1, v5

    .line 260
    :cond_3
    sget-object v2, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$1;->b:[I

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->c()I

    move-result v0

    aget v2, v1, v4

    aget v1, v1, v5

    invoke-static {p1, v0, v2, v1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 268
    :pswitch_2
    aget v0, v1, v4

    aget v1, v1, v5

    invoke-static {p1, v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 278
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 279
    check-cast p0, Landroid/widget/ImageView;

    .line 280
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 281
    const-string/jumbo v0, "alipay_icon"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    :cond_0
    return-void
.end method

.method private static b(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 195
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$1;->a:[I

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 211
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 201
    :pswitch_0
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 202
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 208
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->c(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;Landroid/content/Context;)V

    return-void
.end method

.method private static c(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 145
    if-nez p0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-static {p4, p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 154
    :cond_2
    :goto_1
    invoke-static {p0, p2, v0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    if-nez p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "local:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    if-eqz v2, :cond_3

    .line 131
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->c(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b(Landroid/view/View;)V

    .line 139
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move v2, v1

    .line 130
    goto :goto_1

    .line 132
    :cond_3
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "net:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    if-eqz v0, :cond_6

    .line 133
    invoke-static {p2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageFormater;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageFormater;->a(Ljava/lang/String;[I)Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageUrl;

    move-result-object v2

    new-instance v7, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageAsyncTask;

    invoke-direct {v7, p0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageAsyncTask;-><init>(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;)V

    invoke-static {v7, p4}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageAsyncTask;->a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageAsyncTask;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;)Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/c;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/ui/quickpay/util/c;-><init>(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageUrl;Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;Landroid/content/Context;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_5

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageUrl;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p5, v3, v2

    const/4 v2, 0x2

    aput-object v0, v3, v2

    invoke-virtual {v7, v1, v3}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 132
    goto :goto_2

    .line 133
    :cond_5
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageUrl;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p5, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-virtual {v7, v1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 135
    :cond_6
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
