.class public Lcom/uc/webview/export/WebResourceResponse;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceResponse;->a:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/uc/webview/export/WebResourceResponse;->b:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/uc/webview/export/WebResourceResponse;->c:Ljava/io/InputStream;

    .line 50
    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/uc/webview/export/WebResourceResponse;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/uc/webview/export/WebResourceResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/uc/webview/export/WebResourceResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceResponse;->c:Ljava/io/InputStream;

    .line 102
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceResponse;->b:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceResponse;->a:Ljava/lang/String;

    .line 60
    return-void
.end method
