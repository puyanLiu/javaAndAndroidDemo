.class public Lcom/uc/webview/export/extension/UCExtension;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static final LAYOUT_STYLE_ADAPT_SCREEN:I = 0x2

.field public static final LAYOUT_STYLE_MOBILE_OPTIMUM:I = 0x4

.field public static final LAYOUT_STYLE_ZOOM_OPTIMUM:I = 0x1

.field public static final MOVE_CURSOR_KEY_NEXT_ENABLE:Ljava/lang/String; = "next_enable"

.field public static final MOVE_CURSOR_KEY_PREVIOUS_ENABLE:Ljava/lang/String; = "previous_enable"

.field public static final MOVE_CURSOR_KEY_SUCCEED:Ljava/lang/String; = "succeed"

.field public static final MOVE_CURSOR_STEP_CURRENT:I = 0x0

.field public static final MOVE_CURSOR_STEP_NEXT:I = 0x1

.field public static final MOVE_CURSOR_STEP_PREV:I = -0x1


# instance fields
.field private a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/interfaces/IWebView;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-interface {p1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getUCExtension()Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    .line 146
    return-void
.end method


# virtual methods
.method public getActiveLayoutStyle()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getActiveLayoutStyle()I

    move-result v0

    return v0
.end method

.method public getBackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getBackUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusedNodeAnchorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getFocusedNodeAnchorText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusedNodeImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getFocusedNodeImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusedNodeLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getFocusedNodeLinkUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForwardUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getForwardUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpsRemoteCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getHttpsRemoteCertificate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getPageEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getPageSize()I

    move-result v0

    return v0
.end method

.method public getUCSettings()Lcom/uc/webview/export/extension/UCSettings;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    move-result-object v0

    return-object v0
.end method

.method public isLoadFromCachedPage()Z
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 346
    if-nez v0, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public moveCursorToTextInput(I)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->moveCursorToTextInput(I)V

    .line 243
    return-void
.end method

.method public setBackForwardListListener(Lcom/uc/webview/export/extension/IBackForwardListListener;)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->setBackForwardListListener(Lcom/uc/webview/export/extension/IBackForwardListListener;)V

    .line 232
    return-void
.end method

.method public setClient(Lcom/uc/webview/export/extension/UCClient;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->setClient(Lcom/uc/webview/export/extension/UCClient;)V

    .line 155
    return-void
.end method

.method public setInjectJSProvider(Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;I)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->setInjectJSProvider(Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;I)V

    .line 300
    return-void
.end method

.method public setSoftKeyboardListener(Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;)V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->setSoftKeyboardListener(Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;)V

    .line 332
    return-void
.end method

.method public setTextSelectionClient(Lcom/uc/webview/export/extension/UCExtension$TextSelectionClient;)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/uc/webview/export/extension/UCExtension;->a:Lcom/uc/webview/export/internal/interfaces/IUCExtension;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IUCExtension;->setTextSelectionClient(Lcom/uc/webview/export/extension/UCExtension$TextSelectionClient;)V

    .line 342
    return-void
.end method
