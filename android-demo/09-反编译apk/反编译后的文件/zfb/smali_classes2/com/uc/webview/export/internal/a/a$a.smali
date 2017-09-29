.class public Lcom/uc/webview/export/internal/a/a$a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final f:Ljava/lang/Class;

.field static final g:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

.field static final h:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

.field static final i:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

.field static final j:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

.field static final k:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

.field static final l:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

.field static final m:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

.field static final n:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

.field static final o:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

.field static final p:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

.field static final q:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

.field static final r:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

.field static final s:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    invoke-static {}, Lcom/uc/webview/export/internal/a/a;->l()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/a/a$a;->f:Ljava/lang/Class;

    .line 30
    new-instance v0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    sget-object v1, Lcom/uc/webview/export/internal/a/a$a;->f:Ljava/lang/Class;

    const-string/jumbo v2, "getGlobalSettings"

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/uc/webview/export/internal/a/a$a;->g:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 33
    new-instance v0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    sget-object v1, Lcom/uc/webview/export/internal/a/a$a;->f:Ljava/lang/Class;

    const-string/jumbo v2, "getCookieManager"

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/uc/webview/export/internal/a/a$a;->h:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 36
    new-instance v0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    sget-object v1, Lcom/uc/webview/export/internal/a/a$a;->f:Ljava/lang/Class;

    const-string/jumbo v2, "getUCMobileWebKit"

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/uc/webview/export/internal/a/a$a;->i:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 39
    new-instance v0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    sget-object v1, Lcom/uc/webview/export/internal/a/a$a;->f:Ljava/lang/Class;

    const-string/jumbo v2, "getGeolocationPermissions"

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/uc/webview/export/internal/a/a$a;->j:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 42
    new-instance v0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    sget-object v1, Lcom/uc/webview/export/internal/a/a$a;->f:Ljava/lang/Class;

    const-string/jumbo v2, "getWebStorage"

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/uc/webview/export/internal/a/a$a;->k:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 45
    new-instance v0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    sget-object v1, Lcom/uc/webview/export/internal/a/a$a;->f:Ljava/lang/Class;

    const-string/jumbo v2, "getMimeTypeMap"

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/uc/webview/export/internal/a/a$a;->l:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 49
    new-instance v0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    sget-object v1, Lcom/uc/webview/export/internal/a/a$a;->f:Ljava/lang/Class;

    const-string/jumbo v2, "createWebView"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/uc/webview/export/internal/a/a$a;->m:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 53
    new-instance v0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    sget-object v1, Lcom/uc/webview/export/internal/a/a$a;->f:Ljava/lang/Class;

    const-string/jumbo v2, "initUCMobileWebKit"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/uc/webview/export/internal/a/a$a;->n:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 57
    new-instance v0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    sget-object v1, Lcom/uc/webview/export/internal/a/a$a;->f:Ljava/lang/Class;

    const-string/jumbo v2, "initUCMobileWebkitCoreSo"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/uc/webview/export/internal/a/a$a;->o:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 62
    new-instance v0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    sget-object v1, Lcom/uc/webview/export/internal/a/a$a;->f:Ljava/lang/Class;

    const-string/jumbo v2, "getCoreType"

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/uc/webview/export/internal/a/a$a;->p:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 65
    new-instance v0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    sget-object v1, Lcom/uc/webview/export/internal/a/a$a;->f:Ljava/lang/Class;

    const-string/jumbo v2, "initSDK"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/uc/webview/export/internal/a/a$a;->q:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 69
    new-instance v0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    sget-object v1, Lcom/uc/webview/export/internal/a/a$a;->f:Ljava/lang/Class;

    const-string/jumbo v2, "handlePerformanceTests"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/uc/webview/export/internal/a/a$a;->r:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    .line 73
    new-instance v0, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    sget-object v1, Lcom/uc/webview/export/internal/a/a$a;->f:Ljava/lang/Class;

    const-string/jumbo v2, "getResponseByUrl"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/uc/webview/export/internal/a/a$a;->s:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    return-void
.end method
