.class public final Lcom/alipay/mobile/quinox/bundle/h;
.super Ljava/lang/Object;
.source "BundlesVerifier.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

.field private final c:Z

.field private d:Lcom/alipay/mobile/quinox/security/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/quinox/bundle/BundlesManager;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/h;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/h;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/h;->c:Z

    .line 44
    new-instance v0, Lcom/alipay/mobile/quinox/security/a;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/security/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/h;->d:Lcom/alipay/mobile/quinox/security/a;

    .line 45
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Set;Z)V
    .locals 5

    .prologue
    .line 128
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    .line 129
    iget-object v2, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->l()Lcom/alipay/mobile/quinox/bundle/a;

    .line 131
    if-eqz p3, :cond_0

    .line 132
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/h;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v2, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    .line 136
    const-string/jumbo v2, "BundleVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " deleted jar."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/h;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v2}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->i()Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " delete "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/h;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a()Ljava/util/Iterator;

    move-result-object v3

    .line 80
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 84
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    .line 86
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v2

    .line 88
    :goto_1
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/h;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    iget-object v6, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->isInHost(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v1, :cond_0

    .line 89
    :cond_1
    if-nez v1, :cond_3

    .line 92
    const-string/jumbo v1, "BundleVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verifySign: jar file deleted: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_1

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/h;->d:Lcom/alipay/mobile/quinox/security/a;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/security/a;->a(Lcom/alipay/mobile/quinox/bundle/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/h;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/h;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "lib"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "armeabi"

    aput-object v8, v7, v2

    invoke-interface {v1, v5, v6, v7}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 97
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v1}, Lcom/alipay/mobile/quinox/security/c;->a(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const-string/jumbo v1, "BundleVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verifySign: verify sign error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 104
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 105
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verify sign error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 106
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/bundle/h;->c:Z

    if-eqz v1, :cond_6

    .line 107
    const-string/jumbo v1, "BundleVerifier"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    :cond_5
    return-void

    .line 109
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/h;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->e()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1, v4, v9}, Lcom/alipay/mobile/quinox/bundle/h;->a(Ljava/util/Map;Ljava/util/Set;Z)V

    .line 110
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/h;->d:Lcom/alipay/mobile/quinox/security/a;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/security/a;->a(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public final a(Ljava/util/Map;Z)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 154
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 160
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    .line 161
    iget-object v1, v0, Lcom/alipay/mobile/quinox/bundle/a;->m:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 162
    iget-object v6, v0, Lcom/alipay/mobile/quinox/bundle/a;->m:[Ljava/lang/String;

    array-length v7, v6

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_0

    aget-object v8, v6, v2

    .line 165
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 166
    const-string/jumbo v1, "@"

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 170
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v1, v9

    .line 171
    const/4 v10, 0x1

    aget-object v10, v1, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    const-string/jumbo v1, "-quinox"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 178
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/quinox/bundle/a;

    .line 181
    if-eqz v1, :cond_1

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 182
    :cond_1
    const-string/jumbo v1, "BundleVerifier"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verifyDependencies "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\'s dependencies error: can\'t find "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    const-string/jumbo v2, "BundleVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "verifyDependencies "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'s verifyDependencies "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 187
    :cond_2
    iget-object v9, v1, Lcom/alipay/mobile/quinox/bundle/a;->b:Ljava/lang/String;

    invoke-static {v10, v9}, Lcom/alipay/mobile/quinox/utils/StringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 188
    const-string/jumbo v2, "BundleVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "verifyDependencies "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'s dependencies error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v1, v1, Lcom/alipay/mobile/quinox/bundle/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 164
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 194
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 195
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verify dependencies error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 196
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/bundle/h;->c:Z

    if-eqz v1, :cond_6

    .line 197
    const-string/jumbo v1, "BundleVerifier"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    :cond_5
    return-void

    .line 199
    :cond_6
    invoke-direct {p0, p1, v4, p2}, Lcom/alipay/mobile/quinox/bundle/h;->a(Ljava/util/Map;Ljava/util/Set;Z)V

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/h;->a(Ljava/util/Map;Z)V

    .line 201
    throw v0
.end method

.method public final a(Lcom/alipay/mobile/quinox/bundle/a;)Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/h;->d:Lcom/alipay/mobile/quinox/security/a;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/security/a;->a(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/h;->d:Lcom/alipay/mobile/quinox/security/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/security/a;->a(Lcom/alipay/mobile/quinox/bundle/a;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/h;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "MonitorPoint_DynamicLoad_StartErr"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    .line 75
    :goto_1
    return v0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 75
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method
