.class final Lcom/uc/webview/export/internal/a/b$b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IRequestData;


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/a/b$b;->a:Ljava/util/Map;

    .line 46
    iput-object p1, p0, Lcom/uc/webview/export/internal/a/b$b;->a:Ljava/util/Map;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/a/b$b;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/b$b;->a:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final getHeaders()Ljava/util/Map;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/b$b;->a:Ljava/util/Map;

    const-string/jumbo v1, "3"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/b$b;->a:Ljava/util/Map;

    const-string/jumbo v1, "2"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/b$b;->a:Ljava/util/Map;

    const-string/jumbo v1, "1"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final setHeaders(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/b$b;->a:Ljava/util/Map;

    const-string/jumbo v1, "3"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public final setMethod(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/b$b;->a:Ljava/util/Map;

    const-string/jumbo v1, "2"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/b$b;->a:Ljava/util/Map;

    const-string/jumbo v1, "1"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
