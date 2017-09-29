.class public abstract Lcom/uc/webview/export/WebSettings;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static final COOKIE_TYPE_SYSTEM:I = 0x1

.field public static final COOKIE_TYPE_UC:I = 0x2

.field public static final COOKIE_TYPE_UC_ENCRYPT:I = 0x3

.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOAD_NO_CACHE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    return-void
.end method


# virtual methods
.method public enableSmoothTransition()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 429
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1336
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1323
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 1001
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 1035
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 314
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 1514
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 1273
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1262
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 942
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .locals 1

    .prologue
    .line 920
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1422
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Lcom/uc/webview/export/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 568
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 339
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 1252
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 854
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 770
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 1401
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 1309
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 728
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 590
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 400
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 970
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .locals 1

    .prologue
    .line 876
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 898
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getPluginState()Lcom/uc/webview/export/WebSettings$PluginState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1363
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1350
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1378
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 791
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 476
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getSavePassword()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 499
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextSize()Lcom/uc/webview/export/WebSettings$TextSize;
    .locals 1

    .prologue
    .line 545
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextZoom()I
    .locals 1

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 616
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 457
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 683
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1442
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setAllowFileAccess(Z)V
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 1

    .prologue
    .line 1093
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1

    .prologue
    .line 1069
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 1182
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1214
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1197
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 1

    .prologue
    .line 990
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1

    .prologue
    .line 1024
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1

    .prologue
    .line 303
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setCacheMode(I)V
    .locals 1

    .prologue
    .line 1503
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 822
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .locals 1

    .prologue
    .line 1231
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1155
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .locals 1

    .prologue
    .line 931
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .locals 1

    .prologue
    .line 909
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1411
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Lcom/uc/webview/export/WebSettings$ZoomDensity;)V
    .locals 1

    .prologue
    .line 556
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setDisplayZoomControls(Z)V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .locals 1

    .prologue
    .line 1241
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 415
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 843
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 759
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1169
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .locals 1

    .prologue
    .line 1298
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1

    .prologue
    .line 1389
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .locals 1

    .prologue
    .line 1046
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;)V
    .locals 1

    .prologue
    .line 717
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLightTouchEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 579
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .locals 1

    .prologue
    .line 958
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .locals 1

    .prologue
    .line 865
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .locals 1

    .prologue
    .line 887
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNavDump(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1

    .prologue
    .line 1471
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setPluginState(Lcom/uc/webview/export/WebSettings$PluginState;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1123
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1107
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1138
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRenderPriority(Lcom/uc/webview/export/WebSettings$RenderPriority;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1486
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 780
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 1

    .prologue
    .line 465
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setSavePassword(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 801
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 738
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .locals 1

    .prologue
    .line 695
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setTextSize(Lcom/uc/webview/export/WebSettings$TextSize;)V
    .locals 1

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextZoom(I)V
    .locals 1

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 603
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .locals 1

    .prologue
    .line 671
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 635
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1431
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 706
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method
