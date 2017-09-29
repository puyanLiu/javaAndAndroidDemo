.class final Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;
.super Ljava/lang/Object;
.source "AndroidWebSettings.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebSettings;


# static fields
.field public static final TAG:Ljava/lang/String; = "AndroidWebSettings"

.field private static b:Ljava/lang/reflect/Method;

.field private static synthetic c:[I

.field private static synthetic d:[I

.field private static synthetic e:[I


# instance fields
.field private a:Landroid/webkit/WebSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Ljava/lang/reflect/Method;

    .line 17
    return-void
.end method

.method constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 5

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    if-eqz v0, :cond_1

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 29
    sget-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 32
    const-string/jumbo v1, "setMixedContentMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 39
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 48
    :cond_1
    :goto_1
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string/jumbo v1, "AndroidWebSettings"

    const-string/jumbo v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    .line 41
    const-string/jumbo v1, "AndroidWebSettings"

    const-string/jumbo v2, "AndroidWebSettings IllegalAccessException"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 42
    :catch_2
    move-exception v0

    .line 43
    const-string/jumbo v1, "AndroidWebSettings"

    const-string/jumbo v2, "AndroidWebSettings InvocationTargetException"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->values()[Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->LARGER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->LARGEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->SMALLER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->SMALLEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->c:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static synthetic b()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->d:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->values()[Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->d:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private static synthetic c()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->values()[Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->OFF:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON_DEMAND:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->e:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final getAllowContentAccess()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowContentAccess()Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v0

    return v0
.end method

.method public final getAllowFileAccessFromFileURLs()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 503
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccessFromFileURLs()Z

    move-result v0

    .line 506
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAllowUniversalAccessFromFileURLs()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 493
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowUniversalAccessFromFileURLs()Z

    move-result v0

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBlockNetworkImage()Z

    move-result v0

    return v0
.end method

.method public final getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    return v0
.end method

.method public final getCacheMode()I
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v0

    return v0
.end method

.method public final getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDatabaseEnabled()Z

    move-result v0

    return v0
.end method

.method public final getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFixedFontSize()I

    move-result v0

    return v0
.end method

.method public final getDefaultFontSize()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFontSize()I

    move-result v0

    return v0
.end method

.method public final getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDefaultZoom()Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayZoomControls()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDisplayZoomControls()Z

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDomStorageEnabled()Z

    move-result v0

    return v0
.end method

.method public final getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getFantasyFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getFixedFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    return v0
.end method

.method public final getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public final getLayoutAlgorithm()Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    return v0
.end method

.method public final getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    return v0
.end method

.method public final getMediaPlaybackRequiresUserGesture()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMediaPlaybackRequiresUserGesture()Z

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMinimumFontSize()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v0

    return v0
.end method

.method public final getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumLogicalFontSize()I

    move-result v0

    return v0
.end method

.method public final getPluginState()Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getPluginState()Landroid/webkit/WebSettings$PluginState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    move-result-object v0

    return-object v0
.end method

.method public final getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSansSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSaveFormData()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v0

    return v0
.end method

.method public final getSavePassword()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v0

    return v0
.end method

.method public final getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getStandardFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTextSize()Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    move-result-object v0

    return-object v0
.end method

.method public final getTextZoom()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public final getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public final getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setAllowContentAccess(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method public final setAllowFileAccess(Z)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 112
    return-void
.end method

.method public final setAllowFileAccessFromFileURLs(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 419
    :cond_0
    return-void
.end method

.method public final setAllowUniversalAccessFromFileURLs(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 411
    :cond_0
    return-void
.end method

.method public final setAppCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 448
    return-void
.end method

.method public final setAppCachePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public final setBlockNetworkImage(Z)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 388
    return-void
.end method

.method public final setBuiltInZoomControls(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 84
    :cond_0
    return-void
.end method

.method public final setCacheMode(I)V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 559
    return-void
.end method

.method public final setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public final setDatabaseEnabled(Z)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 463
    return-void
.end method

.method public final setDatabasePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public final setDefaultFixedFontSize(I)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 368
    return-void
.end method

.method public final setDefaultFontSize(I)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 358
    return-void
.end method

.method public final setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public final setDisplayZoomControls(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method public final setDomStorageEnabled(Z)V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 473
    return-void
.end method

.method public final setEnableFastScroller(Z)V
    .locals 0

    .prologue
    .line 569
    return-void
.end method

.method public final setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public final setFixedFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public final setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public final setGeolocationEnabled(Z)V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 488
    return-void
.end method

.method public final setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 518
    return-void
.end method

.method public final setJavaScriptEnabled(Z)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 398
    return-void
.end method

.method public final setLayoutAlgorithm(Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    invoke-static {}, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->b()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 265
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 268
    :cond_1
    return-void

    .line 248
    :pswitch_0
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_0

    .line 251
    :pswitch_1
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_0

    .line 254
    :pswitch_2
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_0

    .line 257
    :pswitch_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 258
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final setLoadWithOverviewMode(Z)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 140
    return-void
.end method

.method public final setLoadsImagesAutomatically(Z)V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 378
    return-void
.end method

.method public final setMediaPlaybackRequiresUserGesture(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 66
    :cond_0
    return-void
.end method

.method public final setMinimumFontSize(I)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 338
    return-void
.end method

.method public final setMinimumLogicalFontSize(I)V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 348
    return-void
.end method

.method public final setNeedInitialFocus(Z)V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 554
    return-void
.end method

.method public final setPageCacheCapacity(I)V
    .locals 0

    .prologue
    .line 574
    return-void
.end method

.method public final setPluginState(Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;)V
    .locals 2

    .prologue
    .line 423
    invoke-static {}, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->c()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 438
    :goto_0
    return-void

    .line 425
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    .line 426
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto :goto_0

    .line 429
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    .line 430
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto :goto_0

    .line 433
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    .line 434
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public final setSaveFormData(Z)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 150
    return-void
.end method

.method public final setSavePassword(Z)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 160
    return-void
.end method

.method public final setSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public final setStandardFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public final setSupportMultipleWindows(Z)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 235
    return-void
.end method

.method public final setSupportZoom(Z)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 53
    return-void
.end method

.method public final setTextSize(Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;)V
    .locals 3

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    invoke-static {}, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 203
    :goto_0
    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 210
    :cond_0
    return-void

    .line 190
    :pswitch_0
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    .line 193
    :pswitch_1
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    .line 196
    :pswitch_2
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    .line 199
    :pswitch_3
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    .line 202
    :pswitch_4
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setTextZoom(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public final setUseWideViewPort(Z)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 225
    return-void
.end method

.method public final setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public final supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportMultipleWindows()Z

    move-result v0

    return v0
.end method

.method public final supportZoom()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    return v0
.end method
