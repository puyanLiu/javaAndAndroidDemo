.class public Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveData()V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/a/a/a;->a()V

    .line 149
    :cond_0
    return-void
.end method

.method public static stat(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-virtual {v0, p0}, Lcom/uc/webview/export/internal/a/a/a;->b(Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "stat>>WaStatImp not inited"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static stat(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 132
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    const-string/jumbo v1, "stat"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/d;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/uc/webview/export/internal/a/a/a;->d:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/uc/webview/export/internal/a/a/a;->e:Landroid/os/Handler;

    new-instance v2, Lcom/uc/webview/export/internal/a/a/a$b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, p0, v3, v4}, Lcom/uc/webview/export/internal/a/a/a$b;-><init>(Lcom/uc/webview/export/internal/a/a/a;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "stat>>WaStatImp not inited"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static statAdd(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 115
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    const-string/jumbo v1, "stat"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/d;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/uc/webview/export/internal/a/a/a;->d:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/uc/webview/export/internal/a/a/a;->e:Landroid/os/Handler;

    new-instance v2, Lcom/uc/webview/export/internal/a/a/a$b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v0, p0, v3, v4}, Lcom/uc/webview/export/internal/a/a/a$b;-><init>(Lcom/uc/webview/export/internal/a/a/a;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "stat>>WaStatImp not inited"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static statPV(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-virtual {v0, p0}, Lcom/uc/webview/export/internal/a/a/a;->a(Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "statPV>>WaStatImp not inited"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
