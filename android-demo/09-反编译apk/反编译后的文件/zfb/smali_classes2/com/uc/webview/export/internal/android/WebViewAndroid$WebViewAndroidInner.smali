.class Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;
.super Landroid/webkit/WebView;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/android/WebViewAndroid;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/android/WebViewAndroid;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    .line 46
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/webkit/WebView;->computeScroll()V

    .line 159
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 187
    return-void
.end method

.method public final a(IIII)V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 171
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 163
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 179
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 167
    return-void
.end method

.method public final a(IIIIIIIIZ)Z
    .locals 1

    .prologue
    .line 196
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 183
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/webkit/WebView;->requestLayout()V

    .line 191
    return-void
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreComputeScroll()V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->computeScroll()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreDestroy()V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreDraw(Landroid/graphics/Canvas;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreOnScrollChanged(IIII)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreOnVisibilityChanged(Landroid/view/View;I)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreOverScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    .line 148
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Jni;
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreRequestLayout()V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid;

    invoke-static {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;->coreSetVisibility(I)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method
