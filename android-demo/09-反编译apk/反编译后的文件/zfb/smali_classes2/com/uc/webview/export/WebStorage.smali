.class public Lcom/uc/webview/export/WebStorage;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;


# instance fields
.field private b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;


# direct methods
.method private constructor <init>(Lcom/uc/webview/export/internal/interfaces/IWebStorage;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    .line 124
    return-void
.end method

.method private static declared-synchronized a(I)Lcom/uc/webview/export/WebStorage;
    .locals 4

    .prologue
    .line 230
    const-class v1, Lcom/uc/webview/export/WebStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uc/webview/export/WebStorage;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/WebStorage;->a:Ljava/util/HashMap;

    .line 233
    :cond_0
    sget-object v0, Lcom/uc/webview/export/WebStorage;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/WebStorage;

    .line 234
    if-nez v0, :cond_1

    .line 235
    new-instance v0, Lcom/uc/webview/export/WebStorage;

    invoke-static {p0}, Lcom/uc/webview/export/internal/d;->a(I)Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/uc/webview/export/WebStorage;-><init>(Lcom/uc/webview/export/internal/interfaces/IWebStorage;)V

    .line 236
    sget-object v2, Lcom/uc/webview/export/WebStorage;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_1
    monitor-exit v1

    return-object v0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/uc/webview/export/WebStorage;
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/uc/webview/export/internal/d;->f()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/WebStorage;->a(I)Lcom/uc/webview/export/WebStorage;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/uc/webview/export/WebView;)Lcom/uc/webview/export/WebStorage;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/WebStorage;->a(I)Lcom/uc/webview/export/WebStorage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllData()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebStorage;->deleteAllData()V

    .line 205
    return-void
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebStorage;->deleteOrigin(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public getOrigins(Landroid/webkit/ValueCallback;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 148
    return-void
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebStorage;->getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 172
    return-void
.end method

.method public getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebStorage;->getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 160
    return-void
.end method

.method public setQuotaForOrigin(Ljava/lang/String;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-interface {v0, p1, p2, p3}, Lcom/uc/webview/export/internal/interfaces/IWebStorage;->setQuotaForOrigin(Ljava/lang/String;J)V

    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WebStorage@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
