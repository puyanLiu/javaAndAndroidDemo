.class public abstract Lcom/uc/webview/export/extension/UCSettings;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static final LAYOUT_MODE_ADAPT:I = 0x2

.field public static final LAYOUT_MODE_ZOOM:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnableAllResourceCallBack()Z
    .locals 2

    .prologue
    .line 264
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    .line 266
    const-string/jumbo v1, "enable_allresponse_callback"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    .line 268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableRequestIntercept()Z
    .locals 2

    .prologue
    .line 250
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    .line 252
    const-string/jumbo v1, "enable_request_intercept"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLayoutMode()I
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    const-string/jumbo v1, "LayoutStyle"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getPageCacheCapacity()I
    .locals 2

    .prologue
    .line 298
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    const-string/jumbo v1, "CachePageNumber"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isEnableCustomErrorPage()Z
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    const-string/jumbo v1, "EnableCustomErrPage"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNightMode()Z
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    const-string/jumbo v1, "IsNightMode"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setEnableAdblock(Z)V
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    .line 192
    const-string/jumbo v1, "EnableAdBlock"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 194
    :cond_0
    return-void
.end method

.method public static setEnableAllResourceCallBack(Z)V
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    const-string/jumbo v1, "enable_allresponse_callback"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 233
    :cond_0
    return-void
.end method

.method public static setEnableCustomErrorPage(Z)V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    const-string/jumbo v1, "EnableCustomErrPage"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 154
    const-string/jumbo v1, "EnableCustomErrPage"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 156
    :cond_0
    return-void
.end method

.method public static setEnableDispatcher(Z)V
    .locals 2

    .prologue
    .line 203
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    const-string/jumbo v1, "enable_dispatcher"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 207
    :cond_0
    return-void
.end method

.method public static setEnableMultiThreadParser(Z)V
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    .line 218
    const-string/jumbo v1, "enable_multithread_parser"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 220
    :cond_0
    return-void
.end method

.method public static setEnableRequestIntercept(Z)V
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    const-string/jumbo v1, "enable_request_intercept"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 246
    :cond_0
    return-void
.end method

.method public static setGlobalEnableUCProxy(Z)V
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    const-string/jumbo v1, "global_enable_ucproxy"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 181
    :cond_0
    return-void
.end method

.method public static setLayoutMode(I)V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    const-string/jumbo v1, "LayoutStyle"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-eq v1, p0, :cond_0

    .line 101
    const-string/jumbo v1, "LayoutStyle"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setIntValue(Ljava/lang/String;I)V

    .line 103
    :cond_0
    return-void
.end method

.method public static setNightMode(Z)V
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    const-string/jumbo v1, "IsNightMode"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 127
    const-string/jumbo v1, "IsNightMode"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 129
    :cond_0
    return-void
.end method

.method public static setPageCacheCapacity(I)V
    .locals 3

    .prologue
    .line 279
    if-ltz p0, :cond_0

    const/16 v0, 0x14

    if-le p0, v0, :cond_1

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "capacity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", should be a non-negative integer between 0 (no cache) and 20 (max)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_2

    .line 286
    const-string/jumbo v1, "CachePageNumber"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setIntValue(Ljava/lang/String;I)V

    .line 288
    :cond_2
    return-void
.end method


# virtual methods
.method public enableFastScroller()Z
    .locals 2

    .prologue
    .line 321
    const-string/jumbo v0, "UCSettings"

    const-string/jumbo v1, "enableFastScroller not override"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getEnableUCProxy()Z
.end method

.method public abstract getForceUCProxy()Z
.end method

.method public abstract getUCCookieType()I
.end method

.method public setEnableFastScroller(Z)V
    .locals 2

    .prologue
    .line 311
    const-string/jumbo v0, "UCSettings"

    const-string/jumbo v1, "setEnableFastScroller not override"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public abstract setEnableUCProxy(Z)V
.end method

.method public abstract setForceUCProxy(Z)V
.end method

.method public abstract setUCCookieType(I)V
.end method
