.class final Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;
.super Ljava/lang/Object;
.source "UCWebSettings.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebSettings;


# instance fields
.field private mUCImpl:Lcom/uc/webview/export/WebSettings;

.field private webView:Lcom/uc/webview/export/WebView;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/WebView;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->webView:Lcom/uc/webview/export/WebView;

    .line 23
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    .line 24
    return-void
.end method


# virtual methods
.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getAllowContentAccess()Z

    move-result v0

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getAllowFileAccess()Z

    move-result v0

    return v0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getAllowFileAccessFromFileURLs()Z

    move-result v0

    return v0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getAllowUniversalAccessFromFileURLs()Z

    move-result v0

    return v0
.end method

.method public getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getBlockNetworkImage()Z

    move-result v0

    return v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getCacheMode()I

    move-result v0

    return v0
.end method

.method public getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDatabaseEnabled()Z

    move-result v0

    return v0
.end method

.method public getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDefaultFixedFontSize()I

    move-result v0

    return v0
.end method

.method public getDefaultFontSize()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDefaultFontSize()I

    move-result v0

    return v0
.end method

.method public getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultZoom()Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDefaultZoom()Lcom/uc/webview/export/WebSettings$ZoomDensity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDisplayZoomControls()Z

    move-result v0

    return v0
.end method

.method public getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getDomStorageEnabled()Z

    move-result v0

    return v0
.end method

.method public getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getFantasyFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getFixedFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    return v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public getLayoutAlgorithm()Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getLayoutAlgorithm()Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    return v0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    return v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getMediaPlaybackRequiresUserGesture()Z

    move-result v0

    return v0
.end method

.method public getMinimumFontSize()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getMinimumFontSize()I

    move-result v0

    return v0
.end method

.method public getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getMinimumLogicalFontSize()I

    move-result v0

    return v0
.end method

.method public getPluginState()Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getPluginState()Lcom/uc/webview/export/WebSettings$PluginState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    move-result-object v0

    return-object v0
.end method

.method public getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getSansSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getSaveFormData()Z

    move-result v0

    return v0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getSavePassword()Z

    move-result v0

    return v0
.end method

.method public getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getStandardFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getTextSize()Lcom/uc/webview/export/WebSettings$TextSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    move-result-object v0

    return-object v0
.end method

.method public getTextZoom()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getTextZoom()I

    move-result v0

    return v0
.end method

.method public getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAllowContentAccess(Z)V

    .line 79
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAllowFileAccess(Z)V

    .line 69
    return-void
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 309
    return-void
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 304
    return-void
.end method

.method public setAppCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAppCacheEnabled(Z)V

    .line 324
    return-void
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public setBlockNetworkImage(Z)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setBlockNetworkImage(Z)V

    .line 284
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setBuiltInZoomControls(Z)V

    .line 49
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setCacheMode(I)V

    .line 424
    return-void
.end method

.method public setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public setDatabaseEnabled(Z)V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDatabaseEnabled(Z)V

    .line 339
    return-void
.end method

.method public setDatabasePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDefaultFixedFontSize(I)V

    .line 264
    return-void
.end method

.method public setDefaultFontSize(I)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDefaultFontSize(I)V

    .line 254
    return-void
.end method

.method public setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDisplayZoomControls(Z)V

    .line 59
    return-void
.end method

.method public setDomStorageEnabled(Z)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setDomStorageEnabled(Z)V

    .line 349
    return-void
.end method

.method public setEnableFastScroller(Z)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/extension/UCSettings;->setEnableFastScroller(Z)V

    .line 436
    :cond_0
    return-void
.end method

.method public setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public setFixedFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public setGeolocationEnabled(Z)V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setGeolocationEnabled(Z)V

    .line 364
    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 384
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 294
    return-void
.end method

.method public setLayoutAlgorithm(Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setLayoutAlgorithm(Lcom/uc/webview/export/WebSettings$LayoutAlgorithm;)V

    .line 164
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 89
    return-void
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 274
    return-void
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 39
    return-void
.end method

.method public setMinimumFontSize(I)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setMinimumFontSize(I)V

    .line 234
    return-void
.end method

.method public setMinimumLogicalFontSize(I)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 244
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setNeedInitialFocus(Z)V

    .line 419
    return-void
.end method

.method public setPageCacheCapacity(I)V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    invoke-static {p1}, Lcom/uc/webview/export/extension/UCSettings;->setPageCacheCapacity(I)V

    .line 443
    :cond_0
    return-void
.end method

.method public setPluginState(Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;)V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/uc/webview/export/WebSettings$PluginState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setPluginState(Lcom/uc/webview/export/WebSettings$PluginState;)V

    .line 314
    return-void
.end method

.method public setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public setSaveFormData(Z)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSaveFormData(Z)V

    .line 99
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSaveFormData(Z)V

    .line 109
    return-void
.end method

.method public setSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setStandardFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSupportMultipleWindows(Z)V

    .line 154
    return-void
.end method

.method public setSupportZoom(Z)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setSupportZoom(Z)V

    .line 29
    return-void
.end method

.method public setTextSize(Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/uc/webview/export/WebSettings$TextSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setTextSize(Lcom/uc/webview/export/WebSettings$TextSize;)V

    .line 129
    return-void
.end method

.method public setTextZoom(I)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setTextZoom(I)V

    .line 119
    return-void
.end method

.method public setUseWideViewPort(Z)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setUseWideViewPort(Z)V

    .line 144
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->supportMultipleWindows()Z

    move-result v0

    return v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;->mUCImpl:Lcom/uc/webview/export/WebSettings;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->supportZoom()Z

    move-result v0

    return v0
.end method
