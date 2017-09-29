.class public final Lcom/uc/webview/export/internal/a/a/a$b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/a/a/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/a/a/a;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/uc/webview/export/internal/a/a/a$b;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/uc/webview/export/internal/a/a/a$b;->b:Ljava/lang/String;

    .line 178
    iput-object p3, p0, Lcom/uc/webview/export/internal/a/a/a$b;->c:Ljava/lang/Integer;

    .line 179
    iput-boolean p4, p0, Lcom/uc/webview/export/internal/a/a/a$b;->d:Z

    .line 180
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 183
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyyMMdd"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 184
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 185
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    .line 187
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 188
    mul-int/lit8 v0, v0, 0xa

    sget v3, Lcom/uc/webview/export/internal/d;->e:I

    add-int/2addr v0, v3

    .line 190
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/a/a$b;->a:Lcom/uc/webview/export/internal/a/a/a;

    iget-object v0, v0, Lcom/uc/webview/export/internal/a/a/a;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/a/a/a$a;

    .line 192
    if-nez v0, :cond_3

    .line 193
    new-instance v0, Lcom/uc/webview/export/internal/a/a/a$a;

    iget-object v3, p0, Lcom/uc/webview/export/internal/a/a/a$b;->a:Lcom/uc/webview/export/internal/a/a/a;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/uc/webview/export/internal/a/a/a$a;-><init>(Lcom/uc/webview/export/internal/a/a/a;B)V

    .line 194
    iget-object v3, p0, Lcom/uc/webview/export/internal/a/a/a$b;->a:Lcom/uc/webview/export/internal/a/a/a;

    iget-object v3, v3, Lcom/uc/webview/export/internal/a/a/a;->c:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 196
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/uc/webview/export/internal/a/a/a$a;->a:Ljava/lang/String;

    .line 199
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/a/a/a$b;->d:Z

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, v1, Lcom/uc/webview/export/internal/a/a/a$a;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/uc/webview/export/internal/a/a/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 201
    if-nez v0, :cond_1

    .line 202
    iget-object v0, v1, Lcom/uc/webview/export/internal/a/a/a$a;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/uc/webview/export/internal/a/a/a$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/webview/export/internal/a/a/a$b;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :goto_1
    return-void

    .line 204
    :cond_1
    iget-object v1, v1, Lcom/uc/webview/export/internal/a/a/a$a;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/uc/webview/export/internal/a/a/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/uc/webview/export/internal/a/a/a$b;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 207
    :cond_2
    iget-object v0, v1, Lcom/uc/webview/export/internal/a/a/a$a;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/uc/webview/export/internal/a/a/a$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/webview/export/internal/a/a/a$b;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
