.class public Lcom/uc/webview/export/WebResourceRequest;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/Map;

.field c:Landroid/net/Uri;

.field d:Z

.field e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceRequest;->a:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/uc/webview/export/WebResourceRequest;->b:Ljava/util/Map;

    .line 39
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "Get"

    invoke-direct {p0, v0, p1, p2}, Lcom/uc/webview/export/WebResourceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;ZZ)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceRequest;->a:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/uc/webview/export/WebResourceRequest;->b:Ljava/util/Map;

    .line 31
    iput-object p3, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    .line 32
    iput-boolean p4, p0, Lcom/uc/webview/export/WebResourceRequest;->d:Z

    .line 33
    iput-boolean p5, p0, Lcom/uc/webview/export/WebResourceRequest;->e:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZZ)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceRequest;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/uc/webview/export/WebResourceRequest;->b:Ljava/util/Map;

    .line 22
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    .line 23
    iput-boolean p4, p0, Lcom/uc/webview/export/WebResourceRequest;->d:Z

    .line 24
    iput-boolean p5, p0, Lcom/uc/webview/export/WebResourceRequest;->e:Z

    .line 25
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/uc/webview/export/WebResourceRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/uc/webview/export/WebResourceRequest;->b:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public hasGesture()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/uc/webview/export/WebResourceRequest;->d:Z

    return v0
.end method

.method public isForMainFrame()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/uc/webview/export/WebResourceRequest;->e:Z

    return v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public setRequestHeaders(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceRequest;->b:Ljava/util/Map;

    return-void
.end method

.method public setUrl(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/WebResourceRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/WebResourceRequest;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/WebResourceRequest;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",hasGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/uc/webview/export/WebResourceRequest;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",isForMainFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/uc/webview/export/WebResourceRequest;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
