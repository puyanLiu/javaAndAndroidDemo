.class final Lcom/uc/webview/export/internal/android/o$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/android/o;

.field private b:Landroid/webkit/ValueCallback;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/android/o;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/o$a;->a:Lcom/uc/webview/export/internal/android/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/uc/webview/export/internal/android/o$a;->b:Landroid/webkit/ValueCallback;

    .line 24
    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 18
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/uc/webview/export/internal/android/o$a;->b:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    iget-object v7, p0, Lcom/uc/webview/export/internal/android/o$a;->b:Landroid/webkit/ValueCallback;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/webkit/WebStorage$Origin;

    new-instance v0, Lcom/uc/webview/export/WebStorage$Origin;

    invoke-virtual {v4}, Landroid/webkit/WebStorage$Origin;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v2

    invoke-virtual {v4}, Landroid/webkit/WebStorage$Origin;->getUsage()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/WebStorage$Origin;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v7, v8}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/o$a;->b:Landroid/webkit/ValueCallback;

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_1
.end method
