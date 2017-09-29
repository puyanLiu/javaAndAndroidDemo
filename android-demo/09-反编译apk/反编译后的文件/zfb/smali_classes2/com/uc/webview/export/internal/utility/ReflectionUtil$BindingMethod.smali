.class public final Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->a:Ljava/lang/Class;

    .line 154
    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->b:Ljava/lang/reflect/Method;

    .line 155
    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->c:Ljava/lang/Object;

    .line 162
    iput-object p1, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->a:Ljava/lang/Class;

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->a:Ljava/lang/Class;

    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->c:Ljava/lang/Object;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final getInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->c:Ljava/lang/Object;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, v0, v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 189
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 191
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 192
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 194
    :cond_0
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :catch_1
    move-exception v0

    .line 196
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
