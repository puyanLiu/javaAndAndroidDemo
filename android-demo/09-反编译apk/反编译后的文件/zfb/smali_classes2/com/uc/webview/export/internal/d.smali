.class public final Lcom/uc/webview/export/internal/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Ljava/lang/ClassLoader;

.field public static b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

.field public static c:I

.field public static d:Z

.field public static e:I

.field public static f:Z

.field public static g:Z

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Landroid/webkit/ValueCallback;

.field public static k:J

.field public static l:Ljava/util/Map;

.field public static m:Ljava/util/Map;

.field static n:Z

.field private static o:Lcom/uc/webview/export/extension/NotAvailableUCListener;

.field private static p:I

.field private static q:Z

.field private static r:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

.field private static s:Lcom/uc/webview/export/internal/a;

.field private static t:Landroid/os/Handler;

.field private static u:Ljava/lang/String;

.field private static v:I

.field private static w:Lcom/uc/webview/export/extension/InitCallback;

.field private static x:Z

.field private static y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 51
    sput-object v3, Lcom/uc/webview/export/internal/d;->o:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    .line 61
    const-class v0, Lcom/uc/webview/export/internal/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/d;->a:Ljava/lang/ClassLoader;

    .line 63
    sput-object v3, Lcom/uc/webview/export/internal/d;->b:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    .line 69
    sput v2, Lcom/uc/webview/export/internal/d;->p:I

    .line 71
    sput-boolean v2, Lcom/uc/webview/export/internal/d;->q:Z

    .line 73
    sput-object v3, Lcom/uc/webview/export/internal/d;->r:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 74
    new-instance v0, Lcom/uc/webview/export/internal/d$a;

    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/d$a;-><init>(B)V

    sput-object v0, Lcom/uc/webview/export/internal/d;->s:Lcom/uc/webview/export/internal/a;

    .line 80
    const/4 v0, -0x1

    sput v0, Lcom/uc/webview/export/internal/d;->v:I

    .line 82
    sput v1, Lcom/uc/webview/export/internal/d;->c:I

    .line 84
    sput-boolean v2, Lcom/uc/webview/export/internal/d;->d:Z

    .line 94
    sput v2, Lcom/uc/webview/export/internal/d;->e:I

    .line 98
    sput-boolean v2, Lcom/uc/webview/export/internal/d;->f:Z

    .line 100
    sput-boolean v2, Lcom/uc/webview/export/internal/d;->g:Z

    .line 102
    sput-boolean v1, Lcom/uc/webview/export/internal/d;->x:Z

    .line 104
    sput-object v3, Lcom/uc/webview/export/internal/d;->h:Ljava/lang/String;

    .line 105
    sput-object v3, Lcom/uc/webview/export/internal/d;->i:Ljava/lang/String;

    .line 107
    sput-object v3, Lcom/uc/webview/export/internal/d;->j:Landroid/webkit/ValueCallback;

    .line 138
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/uc/webview/export/internal/d;->k:J

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/d;->l:Ljava/util/Map;

    .line 142
    sput-object v3, Lcom/uc/webview/export/internal/d;->m:Ljava/util/Map;

    .line 466
    sput-boolean v2, Lcom/uc/webview/export/internal/d;->y:Z

    .line 607
    sput-boolean v2, Lcom/uc/webview/export/internal/d;->n:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/uc/webview/export/internal/d;->t:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/uc/webview/export/internal/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/e;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/uc/webview/export/internal/d;->t:Landroid/os/Handler;

    .line 213
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/d;->t:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Lcom/uc/webview/export/internal/interfaces/IWebView;I)Lcom/uc/webview/export/extension/UCExtension;
    .locals 1

    .prologue
    .line 262
    invoke-static {}, Lcom/uc/webview/export/internal/d;->p()V

    .line 263
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/uc/webview/export/extension/UCExtension;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/extension/UCExtension;-><init>(Lcom/uc/webview/export/internal/interfaces/IWebView;)V

    goto :goto_0
.end method

.method public static a(ILandroid/content/Context;)Lcom/uc/webview/export/internal/c;
    .locals 1

    .prologue
    .line 275
    invoke-static {}, Lcom/uc/webview/export/internal/d;->p()V

    .line 276
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 277
    new-instance v0, Lcom/uc/webview/export/internal/android/q;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/android/q;-><init>()V

    .line 282
    :goto_0
    return-object v0

    .line 279
    :cond_0
    sget-boolean v0, Lcom/uc/webview/export/internal/d;->q:Z

    if-eqz v0, :cond_1

    .line 280
    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_1
    new-instance v0, Lcom/uc/webview/export/internal/a/c;

    invoke-direct {v0, p1}, Lcom/uc/webview/export/internal/a/c;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(I)Lcom/uc/webview/export/internal/interfaces/IWebStorage;
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/uc/webview/export/internal/d;->p()V

    .line 326
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 327
    new-instance v0, Lcom/uc/webview/export/internal/android/o;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/android/o;-><init>()V

    .line 329
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/a/a;->i()Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/uc/webview/export/WebView;Z[I)Lcom/uc/webview/export/internal/interfaces/IWebView;
    .locals 1

    .prologue
    .line 249
    sget-boolean v0, Lcom/uc/webview/export/internal/d;->q:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-static {}, Lcom/uc/webview/export/internal/d;->p()V

    .line 252
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/d;->s:Lcom/uc/webview/export/internal/a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/uc/webview/export/internal/a;->a(Landroid/content/Context;Lcom/uc/webview/export/WebView;Z[I)Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)V
    .locals 2

    .prologue
    .line 148
    sget-wide v0, Lcom/uc/webview/export/internal/d;->k:J

    or-long/2addr v0, p0

    sput-wide v0, Lcom/uc/webview/export/internal/d;->k:J

    .line 149
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 468
    sget-boolean v0, Lcom/uc/webview/export/internal/d;->q:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/uc/webview/export/internal/d;->y:Z

    if-eqz v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    sget-boolean v0, Lcom/uc/webview/export/internal/d;->q:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/uc/webview/export/internal/a/a/a;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/a/a/a;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    :cond_2
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/uc/webview/export/internal/a/a/a;->b:Landroid/content/Context;

    .line 472
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/d;->y:Z

    goto :goto_0
.end method

.method public static a(Lcom/uc/webview/export/extension/InitCallback;)V
    .locals 0

    .prologue
    .line 493
    sput-object p0, Lcom/uc/webview/export/internal/d;->w:Lcom/uc/webview/export/extension/InitCallback;

    .line 494
    return-void
.end method

.method public static a(Lcom/uc/webview/export/extension/NotAvailableUCListener;)V
    .locals 0

    .prologue
    .line 225
    sput-object p0, Lcom/uc/webview/export/internal/d;->o:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    .line 226
    return-void
.end method

.method public static a(Lcom/uc/webview/export/internal/a;)V
    .locals 0

    .prologue
    .line 217
    sput-object p0, Lcom/uc/webview/export/internal/d;->s:Lcom/uc/webview/export/internal/a;

    .line 218
    return-void
.end method

.method private static a(Ljava/io/File;[Ljava/io/File;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 653
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 654
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "libu3player.so"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 655
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 657
    if-eqz v2, :cond_1

    const-string/jumbo v2, "libu3player.so"

    invoke-static {p0, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->isFinished(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 658
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    new-instance v3, Ljava/io/File;

    aget-object v4, p1, v0

    const-string/jumbo v5, "libu3player.so"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 659
    :cond_0
    aput-object p0, p1, v0

    .line 664
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 665
    if-eqz v1, :cond_3

    .line 666
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 667
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 668
    invoke-static {v3, p1}, Lcom/uc/webview/export/internal/d;->a(Ljava/io/File;[Ljava/io/File;)V

    .line 666
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 459
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 460
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/d;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const-wide/32 v8, 0x20000

    const/4 v1, 0x0

    .line 160
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 161
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/d;->m:Ljava/util/Map;

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 164
    const-string/jumbo v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 165
    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 166
    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 167
    array-length v6, v5

    if-ne v6, v10, :cond_3

    .line 168
    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_4
    const-string/jumbo v0, "tag_test_log"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CDParam:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sput-object v2, Lcom/uc/webview/export/internal/d;->m:Ljava/util/Map;

    .line 173
    invoke-static {}, Lcom/uc/webview/export/internal/d;->k()V

    .line 174
    const-string/jumbo v0, "swv"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/uc/webview/export/internal/d;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/uc/webview/export/internal/d;->d:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    sput v10, Lcom/uc/webview/export/internal/d;->p:I

    invoke-static {v8, v9}, Lcom/uc/webview/export/internal/d;->a(J)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {v8, v9}, Lcom/uc/webview/export/internal/d;->a(J)V

    goto :goto_0

    :cond_6
    invoke-static {v8, v9}, Lcom/uc/webview/export/internal/d;->b(J)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 594
    if-eqz p0, :cond_1

    .line 595
    const-string/jumbo v0, "ucPlayerRoot"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/d;->h:Ljava/lang/String;

    .line 599
    :cond_0
    const-string/jumbo v0, "ucPlayer"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_1

    .line 601
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/uc/webview/export/internal/d;->x:Z

    .line 604
    :cond_1
    const-string/jumbo v0, "tag_test_log"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sUseUCPlayer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/uc/webview/export/internal/d;->x:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",sUCPlayerSoRoot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/uc/webview/export/internal/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/uc/webview/export/internal/d;->m:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 184
    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return p1

    .line 183
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/d;->m:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_1
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1
.end method

.method public static b(I)Lcom/uc/webview/export/internal/interfaces/ICookieManager;
    .locals 1

    .prologue
    .line 339
    invoke-static {}, Lcom/uc/webview/export/internal/d;->p()V

    .line 340
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 341
    new-instance v0, Lcom/uc/webview/export/internal/android/a;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/android/a;-><init>()V

    .line 343
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/a/a;->f()Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 232
    const-class v0, Lcom/uc/webview/export/internal/d;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/uc/webview/export/internal/d;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit v0

    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(J)V
    .locals 4

    .prologue
    .line 152
    sget-wide v0, Lcom/uc/webview/export/internal/d;->k:J

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p0

    and-long/2addr v0, v2

    sput-wide v0, Lcom/uc/webview/export/internal/d;->k:J

    .line 153
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 609
    sget-boolean v0, Lcom/uc/webview/export/internal/d;->x:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/webview/export/internal/d;->n:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uc/webview/export/internal/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/uc/webview/export/internal/d;->p:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 610
    invoke-static {p0}, Lcom/uc/webview/export/internal/d;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 611
    const/4 v2, 0x0

    .line 612
    if-eqz v0, :cond_0

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 614
    const-string/jumbo v1, "tag_test_log"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ucPlayerDir:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :try_start_0
    const-string/jumbo v1, "com.uc.media.interfaces.IApolloHelper$Global"

    const/4 v4, 0x1

    sget-object v5, Lcom/uc/webview/export/internal/d;->a:Ljava/lang/ClassLoader;

    invoke-static {v1, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 617
    const-string/jumbo v4, "setApolloSoPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v1, v4, v5, v6}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    new-instance v4, Ljava/io/File;

    const-string/jumbo v1, ".lock"

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 620
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 621
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    :try_start_1
    const-string/jumbo v0, "2.6.0.167"

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 624
    :goto_0
    sput-object v3, Lcom/uc/webview/export/internal/d;->i:Ljava/lang/String;

    .line 625
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/d;->n:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 629
    if-eqz v1, :cond_0

    .line 631
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 638
    :cond_0
    :goto_1
    return-void

    .line 626
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 627
    :goto_2
    :try_start_3
    const-string/jumbo v2, "tag_test_log"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setupForUCPlayer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/uc/webview/export/internal/d;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 629
    if-eqz v1, :cond_0

    .line 631
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 633
    :catch_1
    move-exception v0

    goto :goto_1

    .line 629
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    .line 631
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 633
    :cond_1
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 629
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 626
    :catch_4
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/uc/webview/export/internal/d;->m:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/d;->m:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static c(I)Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/uc/webview/export/internal/d;->p()V

    .line 354
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 355
    new-instance v0, Lcom/uc/webview/export/internal/android/c;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/android/c;-><init>()V

    .line 357
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/a/a;->h()Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 642
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 643
    invoke-static {p0}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUCPlayerRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 644
    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/d;->a(Ljava/io/File;[Ljava/io/File;)V

    .line 645
    const/4 v2, 0x0

    aget-object v2, v1, v2

    if-nez v2, :cond_0

    .line 648
    :goto_0
    return-object v0

    .line 645
    :cond_0
    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v1

    .line 647
    const-string/jumbo v2, "tag_test_log"

    const-string/jumbo v3, "getUCPlayerDir"

    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 304
    sput-object p0, Lcom/uc/webview/export/internal/d;->u:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 236
    sget v0, Lcom/uc/webview/export/internal/d;->p:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(J)Z
    .locals 4

    .prologue
    .line 156
    sget-wide v0, Lcom/uc/webview/export/internal/d;->k:J

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(I)Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;
    .locals 1

    .prologue
    .line 366
    invoke-static {}, Lcom/uc/webview/export/internal/d;->p()V

    .line 367
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 368
    new-instance v0, Lcom/uc/webview/export/internal/android/g;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/android/g;-><init>()V

    .line 370
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/a/a;->j()Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    move-result-object v0

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    invoke-static {}, Lcom/uc/webview/export/internal/d;->f()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 293
    const-string/jumbo v0, "System WebView"

    .line 295
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/d;->u:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic d(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0}, Lcom/uc/webview/export/internal/d;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 497
    invoke-static {}, Lcom/uc/webview/export/internal/d;->f()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 498
    invoke-static {p0}, Lcom/uc/webview/export/internal/a/a;->a(Ljava/lang/String;)V

    .line 500
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 2

    .prologue
    .line 562
    invoke-static {}, Lcom/uc/webview/export/internal/d;->f()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 563
    const/4 v0, 0x0

    .line 566
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/a/a;->b(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 568
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The getResponseByUrl() is not support in this version."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;
    .locals 2

    .prologue
    .line 312
    invoke-static {}, Lcom/uc/webview/export/internal/d;->f()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 315
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/a/a;->g()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(I)V
    .locals 0

    .prologue
    .line 389
    sput p0, Lcom/uc/webview/export/internal/d;->p:I

    .line 390
    return-void
.end method

.method private static declared-synchronized e(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 412
    const-class v1, Lcom/uc/webview/export/internal/d;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/uc/webview/export/internal/d;->q:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uc/webview/export/internal/d;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 416
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/uc/webview/export/internal/d;->f:Z

    if-nez v0, :cond_2

    .line 417
    new-instance v0, Lcom/uc/webview/export/utility/SetupTask;

    invoke-direct {v0}, Lcom/uc/webview/export/utility/SetupTask;-><init>()V

    const-string/jumbo v2, "loadPolicy"

    const-string/jumbo v3, "UCMOBILE_ONLY"

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v0

    const-string/jumbo v2, "AC"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v0

    const-string/jumbo v2, "CONTEXT"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/SetupTask;->start()V

    .line 424
    :cond_2
    invoke-static {}, Lcom/uc/webview/export/internal/d;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 380
    invoke-static {}, Lcom/uc/webview/export/internal/d;->p()V

    .line 382
    sget v0, Lcom/uc/webview/export/internal/d;->p:I

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x1

    .line 385
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/uc/webview/export/internal/d;->p:I

    goto :goto_0
.end method

.method public static f(I)V
    .locals 0

    .prologue
    .line 539
    sput p0, Lcom/uc/webview/export/internal/d;->v:I

    .line 540
    return-void
.end method

.method public static g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;
    .locals 2

    .prologue
    .line 399
    sget-object v0, Lcom/uc/webview/export/internal/d;->r:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Lcom/uc/webview/export/internal/d;->r:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 406
    :goto_0
    return-object v0

    .line 402
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/d;->f()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 403
    const/4 v0, 0x0

    goto :goto_0

    .line 405
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/a/a;->e()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 406
    sput-object v0, Lcom/uc/webview/export/internal/d;->r:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    goto :goto_0
.end method

.method public static h()Landroid/util/Pair;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 503
    invoke-static {}, Lcom/uc/webview/export/internal/d;->f()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 517
    :goto_0
    return-object v0

    .line 506
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/d;->e()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object v1

    .line 508
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "sTrafficSent"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 509
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 511
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "sTrafficReceived"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 512
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    .line 513
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    const-string/jumbo v2, "tag_test_log"

    const-string/jumbo v3, "getTraffic"

    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 526
    sget-boolean v0, Lcom/uc/webview/export/internal/d;->q:Z

    return v0
.end method

.method public static j()I
    .locals 1

    .prologue
    .line 531
    sget v0, Lcom/uc/webview/export/internal/d;->v:I

    return v0
.end method

.method public static k()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x40000

    .line 574
    const-string/jumbo v0, "apollo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 575
    if-nez v0, :cond_1

    .line 576
    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/d;->a(J)V

    .line 580
    :goto_0
    invoke-static {}, Lcom/uc/webview/export/internal/d;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    invoke-static {}, Lcom/uc/webview/export/internal/d;->g()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v1

    .line 582
    if-eqz v1, :cond_0

    .line 583
    if-nez v0, :cond_2

    .line 584
    const-string/jumbo v0, "tag_test_log"

    const-string/jumbo v2, "sdk cd forbid apollo"

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string/jumbo v0, "sdk_apollo_forbid"

    const-string/jumbo v2, "1"

    invoke-interface {v1, v0, v2}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_0
    :goto_1
    return-void

    .line 578
    :cond_1
    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/d;->b(J)V

    goto :goto_0

    .line 587
    :cond_2
    const-string/jumbo v0, "sdk_apollo_forbid"

    const-string/jumbo v2, "0"

    invoke-interface {v1, v0, v2}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic l()Lcom/uc/webview/export/extension/NotAvailableUCListener;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/uc/webview/export/internal/d;->o:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    return-object v0
.end method

.method static synthetic m()Lcom/uc/webview/export/extension/NotAvailableUCListener;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/d;->o:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    return-object v0
.end method

.method static synthetic n()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/uc/webview/export/internal/d;->p:I

    return v0
.end method

.method private static o()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 431
    const/4 v0, 0x0

    .line 432
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getInitInUiThreadRun()Ljava/lang/Runnable;

    move-result-object v1

    .line 436
    if-eqz v1, :cond_3

    sget v2, Lcom/uc/webview/export/internal/d;->p:I

    if-nez v2, :cond_3

    .line 437
    invoke-static {v1}, Lcom/uc/webview/export/internal/d;->a(Ljava/lang/Runnable;)V

    .line 448
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 449
    sget v1, Lcom/uc/webview/export/internal/d;->p:I

    if-nez v1, :cond_1

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    sget v1, Lcom/uc/webview/export/internal/d;->c:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 451
    :cond_1
    :goto_1
    sget v0, Lcom/uc/webview/export/internal/d;->c:I

    if-ne v0, v3, :cond_5

    .line 452
    sput v3, Lcom/uc/webview/export/internal/d;->p:I

    .line 456
    :cond_2
    return-void

    .line 439
    :cond_3
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->isSetupThread()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 440
    const-string/jumbo v0, "tag_test_log"

    const-string/jumbo v1, "waitForInit in setup thread"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 444
    :cond_4
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 453
    :cond_5
    sget v0, Lcom/uc/webview/export/internal/d;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 454
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "init time out!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static p()V
    .locals 2

    .prologue
    .line 476
    invoke-static {}, Lcom/uc/webview/export/internal/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    sget-boolean v0, Lcom/uc/webview/export/internal/d;->q:Z

    if-eqz v0, :cond_1

    .line 478
    sget-object v0, Lcom/uc/webview/export/internal/d;->w:Lcom/uc/webview/export/extension/InitCallback;

    if-eqz v0, :cond_0

    .line 479
    sget-object v0, Lcom/uc/webview/export/internal/d;->w:Lcom/uc/webview/export/extension/InitCallback;

    invoke-interface {v0}, Lcom/uc/webview/export/extension/InitCallback;->notInit()V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    sget-boolean v0, Lcom/uc/webview/export/internal/d;->f:Z

    if-eqz v0, :cond_2

    .line 484
    invoke-static {}, Lcom/uc/webview/export/internal/d;->o()V

    goto :goto_0

    .line 486
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "uninited exception. must invoke Core.init first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
