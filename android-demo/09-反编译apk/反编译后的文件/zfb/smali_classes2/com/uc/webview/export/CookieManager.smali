.class public Lcom/uc/webview/export/CookieManager;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;


# instance fields
.field private b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;


# direct methods
.method private constructor <init>(Lcom/uc/webview/export/internal/interfaces/ICookieManager;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    .line 28
    return-void
.end method

.method private static declared-synchronized a(I)Lcom/uc/webview/export/CookieManager;
    .locals 4

    .prologue
    .line 60
    const-class v1, Lcom/uc/webview/export/CookieManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uc/webview/export/CookieManager;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/CookieManager;->a:Ljava/util/HashMap;

    .line 63
    :cond_0
    sget-object v0, Lcom/uc/webview/export/CookieManager;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/CookieManager;

    .line 64
    if-nez v0, :cond_1

    .line 65
    new-instance v0, Lcom/uc/webview/export/CookieManager;

    invoke-static {p0}, Lcom/uc/webview/export/internal/d;->b(I)Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/uc/webview/export/CookieManager;-><init>(Lcom/uc/webview/export/internal/interfaces/ICookieManager;)V

    .line 66
    sget-object v2, Lcom/uc/webview/export/CookieManager;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/uc/webview/export/CookieManager;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/uc/webview/export/internal/d;->f()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/CookieManager;->a(I)Lcom/uc/webview/export/CookieManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/uc/webview/export/WebView;)Lcom/uc/webview/export/CookieManager;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/CookieManager;->a(I)Lcom/uc/webview/export/CookieManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acceptCookie()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->acceptCookie()Z

    move-result v0

    return v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string/jumbo v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCookies()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->hasCookies()Z

    move-result v0

    return v0
.end method

.method public removeAllCookie()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->removeAllCookie()V

    .line 137
    return-void
.end method

.method public removeSessionCookie()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->removeSessionCookie()V

    .line 129
    return-void
.end method

.method public setAcceptCookie(Z)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->setAcceptCookie(Z)V

    .line 81
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CookieManager@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
