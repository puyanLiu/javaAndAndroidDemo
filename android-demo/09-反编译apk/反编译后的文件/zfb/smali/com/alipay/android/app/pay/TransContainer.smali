.class public final Lcom/alipay/android/app/pay/TransContainer;
.super Lcom/alipay/android/mini/window/BaseActivity;

# interfaces
.implements Lcom/alipay/android/app/display/windows/IContainer;


# instance fields
.field private c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/android/mini/window/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/display/event/OnContainerEventListener;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a(Lcom/alipay/android/app/display/event/OnContainerEventListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/windows/UIWindow;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a(Lcom/alipay/android/app/display/windows/UIWindow;)V

    .line 69
    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/windows/UIWindow;Lcom/alipay/android/app/data/Orientation;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method protected final a(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-direct {v1, p0, p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;-><init>(Landroid/app/Activity;Lcom/alipay/android/app/display/windows/IContainer;)V

    iput-object v1, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 44
    :try_start_0
    const-string/jumbo v1, "CallingPid"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/pay/TransContainer;->b:I

    .line 45
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/pay/TransContainer;->b:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/data/BizDataSource;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/pay/TransContainer;->b:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(Ljava/lang/Object;)V

    .line 48
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/pay/TransContainer;->loading(I)Lcom/alipay/android/app/script/ILoadingScriptable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    .line 54
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final alert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/app/pay/TransContainer;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public final alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method public final allowback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->allowback(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public final confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public final dismiss()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->dismiss()V

    .line 164
    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->dispose()V

    .line 75
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    .line 76
    invoke-super {p0}, Lcom/alipay/android/mini/window/BaseActivity;->finish()V

    .line 77
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->exit()V

    .line 171
    :cond_0
    return-void
.end method

.method public final getLoadingScriptable()Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->getLoadingScriptable()Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final loading(I)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/android/app/pay/TransContainer;->loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    return-object v0
.end method

.method public final loading(ILjava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/android/app/pay/TransContainer;->loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    return-object v0
.end method

.method public final loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onBackPressed()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-super {p0}, Lcom/alipay/android/mini/window/BaseActivity;->onBackPressed()V

    .line 91
    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "   onCreate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/pay/TransContainer;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/alipay/android/app/pay/TransContainer;->finish()V

    .line 35
    :cond_0
    return-void
.end method

.method protected final onPause()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/alipay/android/mini/window/BaseActivity;->onPause()V

    .line 114
    return-void
.end method

.method public final open(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->open(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public final varargs open([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->open([Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method public final openWithCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->openWithCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    return-void
.end method

.method public final varargs openWithCallback(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->openWithCallback(Ljava/lang/String;[Ljava/lang/String;)V

    .line 214
    :cond_0
    return-void
.end method

.method public final submit()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->submit()V

    .line 143
    :cond_0
    return-void
.end method

.method public final submit(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->submit(Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method

.method public final toast(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->toast(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method
