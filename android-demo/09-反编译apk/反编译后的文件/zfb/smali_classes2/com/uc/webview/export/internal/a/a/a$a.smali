.class final Lcom/uc/webview/export/internal/a/a/a$a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/HashMap;

.field final synthetic c:Lcom/uc/webview/export/internal/a/a/a;


# direct methods
.method private constructor <init>(Lcom/uc/webview/export/internal/a/a/a;)V
    .locals 1

    .prologue
    .line 89
    iput-object p1, p0, Lcom/uc/webview/export/internal/a/a/a$a;->c:Lcom/uc/webview/export/internal/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/a/a/a$a;->b:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/webview/export/internal/a/a/a;B)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/uc/webview/export/internal/a/a/a$a;-><init>(Lcom/uc/webview/export/internal/a/a/a;)V

    return-void
.end method
