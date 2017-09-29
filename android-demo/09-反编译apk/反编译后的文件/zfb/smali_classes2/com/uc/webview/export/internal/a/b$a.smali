.class final Lcom/uc/webview/export/internal/a/b$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IResponseData;


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/a/b$a;->a:Ljava/util/Map;

    .line 88
    iput-object p1, p0, Lcom/uc/webview/export/internal/a/b$a;->a:Ljava/util/Map;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/a/b$a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/b$a;->a:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final getHeaders()Ljava/util/Map;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/b$a;->a:Ljava/util/Map;

    const-string/jumbo v1, "3"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final getStatus()I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/b$a;->a:Ljava/util/Map;

    const-string/jumbo v1, "4"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/b$a;->a:Ljava/util/Map;

    const-string/jumbo v1, "1"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final setHeaders(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/b$a;->a:Ljava/util/Map;

    const-string/jumbo v1, "3"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public final setStatus(I)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/b$a;->a:Ljava/util/Map;

    const-string/jumbo v1, "4"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/b$a;->a:Ljava/util/Map;

    const-string/jumbo v1, "1"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method
