.class final Lcom/uc/webview/export/internal/android/i$a;
.super Lcom/uc/webview/export/WebHistoryItem;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/android/i;

.field private b:Landroid/webkit/WebHistoryItem;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/android/i;Landroid/webkit/WebHistoryItem;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/i$a;->a:Lcom/uc/webview/export/internal/android/i;

    invoke-direct {p0}, Lcom/uc/webview/export/WebHistoryItem;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/uc/webview/export/internal/android/i$a;->b:Landroid/webkit/WebHistoryItem;

    .line 16
    return-void
.end method


# virtual methods
.method public final getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i$a;->b:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i$a;->b:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i$a;->b:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i$a;->b:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
