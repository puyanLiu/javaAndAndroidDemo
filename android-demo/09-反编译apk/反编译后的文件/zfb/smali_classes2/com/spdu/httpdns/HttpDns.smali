.class public Lcom/spdu/httpdns/HttpDns;
.super Ljava/lang/Object;
.source "HttpDns.java"


# instance fields
.field a:Lcom/spdu/httpdns/HttpDnsStorage;

.field private b:Lcom/spdu/httpdns/HttpDnsCacheTable;

.field private c:Lcom/spdu/httpdns/ManagerListener;

.field private d:Lcom/spdu/httpdns/TaskThreadPool;

.field private e:Lcom/spdu/httpdns/NetworkManager;

.field private f:Lcom/spdu/httpdns/b;

.field private g:Landroid/content/Context;

.field private final h:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spdu/httpdns/HttpDns;->g:Landroid/content/Context;

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/spdu/httpdns/HttpDns;->h:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 43
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsLog;->a()V

    .line 44
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v0

    iput-object v0, p0, Lcom/spdu/httpdns/HttpDns;->f:Lcom/spdu/httpdns/b;

    .line 45
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsCacheTable;->a()Lcom/spdu/httpdns/HttpDnsCacheTable;

    move-result-object v0

    iput-object v0, p0, Lcom/spdu/httpdns/HttpDns;->b:Lcom/spdu/httpdns/HttpDnsCacheTable;

    .line 46
    invoke-static {}, Lcom/spdu/httpdns/ManagerListener;->a()Lcom/spdu/httpdns/ManagerListener;

    move-result-object v0

    iput-object v0, p0, Lcom/spdu/httpdns/HttpDns;->c:Lcom/spdu/httpdns/ManagerListener;

    .line 47
    invoke-static {}, Lcom/spdu/httpdns/NetworkManager;->a()Lcom/spdu/httpdns/NetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/spdu/httpdns/HttpDns;->e:Lcom/spdu/httpdns/NetworkManager;

    .line 48
    new-instance v0, Lcom/spdu/httpdns/TaskThreadPool;

    invoke-direct {v0}, Lcom/spdu/httpdns/TaskThreadPool;-><init>()V

    iput-object v0, p0, Lcom/spdu/httpdns/HttpDns;->d:Lcom/spdu/httpdns/TaskThreadPool;

    .line 49
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsStorage;->a()Lcom/spdu/httpdns/HttpDnsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/spdu/httpdns/HttpDns;->a:Lcom/spdu/httpdns/HttpDnsStorage;

    .line 50
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->f:Lcom/spdu/httpdns/b;

    invoke-static {}, Lcom/spdu/httpdns/b;->b()V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/spdu/httpdns/HttpDns;-><init>()V

    return-void
.end method

.method public static a()Lcom/spdu/httpdns/HttpDns;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/spdu/httpdns/a;->a:Lcom/spdu/httpdns/HttpDns;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 60
    if-eqz p1, :cond_3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "time begin setContext:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "setHttpDnsContext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->h:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->h:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "time end setContext :\u5e26\u6709\u6253\u5370\u65f6\u95f4\u4e0d\u51c6"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->f:Lcom/spdu/httpdns/b;

    invoke-virtual {v0, p1}, Lcom/spdu/httpdns/b;->a(Landroid/content/Context;)V

    .line 68
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->a:Lcom/spdu/httpdns/HttpDnsStorage;

    invoke-virtual {v0, p1}, Lcom/spdu/httpdns/HttpDnsStorage;->a(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Lcom/spdu/httpdns/d;->a()Lcom/spdu/httpdns/d;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {v0, p1}, Lcom/spdu/httpdns/d;->a(Landroid/content/Context;)V

    .line 75
    :cond_2
    sget-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSFILE_READ:Lcom/spdu/httpdns/ThreadType;

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsTools;->b(Lcom/spdu/httpdns/ThreadType;)V

    .line 77
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->e:Lcom/spdu/httpdns/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/spdu/httpdns/NetworkManager;->a(Landroid/content/Context;)V

    .line 78
    iput-object p1, p0, Lcom/spdu/httpdns/HttpDns;->g:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->h:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "time end setContext :\u5e26\u6709\u6253\u5370\u65f6\u95f4\u4e0d\u51c6"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/spdu/httpdns/HttpDns;->h:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "time end setContext :\u5e26\u6709\u6253\u5370\u65f6\u95f4\u4e0d\u51c6"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3
    const-string/jumbo v0, "setHttpDnsContext context: null"

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/spdu/httpdns/ThreadType;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->f:Lcom/spdu/httpdns/b;

    invoke-virtual {v0}, Lcom/spdu/httpdns/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->g:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "context null return,request type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "context not null request type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    if-ne v0, p1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->f:Lcom/spdu/httpdns/b;

    invoke-static {}, Lcom/spdu/httpdns/b;->p()V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->d:Lcom/spdu/httpdns/TaskThreadPool;

    invoke-virtual {v0, p1}, Lcom/spdu/httpdns/TaskThreadPool;->a(Lcom/spdu/httpdns/ThreadType;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 330
    invoke-static {p1}, Lcom/spdu/httpdns/HttpDnsTools;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->b:Lcom/spdu/httpdns/HttpDnsCacheTable;

    invoke-virtual {v0, p1, p2}, Lcom/spdu/httpdns/HttpDnsCacheTable;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SetErrorByHost"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->f:Lcom/spdu/httpdns/b;

    invoke-virtual {v0}, Lcom/spdu/httpdns/b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->b:Lcom/spdu/httpdns/HttpDnsCacheTable;

    invoke-virtual {v0, p1}, Lcom/spdu/httpdns/HttpDnsCacheTable;->a(Ljava/util/ArrayList;)I

    move-result v0

    .line 144
    if-lez v0, :cond_0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "httpdns1 it has host to check "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_INIT:Lcom/spdu/httpdns/ThreadType;

    invoke-virtual {p0, v0}, Lcom/spdu/httpdns/HttpDns;->a(Lcom/spdu/httpdns/ThreadType;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lcom/spdu/httpdns/HttpDns;->f:Lcom/spdu/httpdns/b;

    invoke-virtual {v1}, Lcom/spdu/httpdns/b;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    invoke-static {p1}, Lcom/spdu/httpdns/HttpDnsTools;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->b:Lcom/spdu/httpdns/HttpDnsCacheTable;

    invoke-virtual {v0, p1}, Lcom/spdu/httpdns/HttpDnsCacheTable;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/spdu/httpdns/HttpDnsOrigin;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 234
    iget-object v1, p0, Lcom/spdu/httpdns/HttpDns;->f:Lcom/spdu/httpdns/b;

    invoke-virtual {v1}, Lcom/spdu/httpdns/b;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    const-string/jumbo v1, "\u670d\u52a1\u7aef\u7981\u7528\uff01"

    invoke-static {v1}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    .line 270
    :cond_0
    :goto_0
    return-object v0

    .line 238
    :cond_1
    invoke-static {p1}, Lcom/spdu/httpdns/HttpDnsTools;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/spdu/httpdns/HttpDns;->b:Lcom/spdu/httpdns/HttpDnsCacheTable;

    invoke-virtual {v1, p1}, Lcom/spdu/httpdns/HttpDnsCacheTable;->d(Ljava/lang/String;)Lcom/spdu/httpdns/HttpDnsOrigin;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 242
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->b:Lcom/spdu/httpdns/HttpDnsCacheTable;

    invoke-virtual {v0, p1}, Lcom/spdu/httpdns/HttpDnsCacheTable;->d(Ljava/lang/String;)Lcom/spdu/httpdns/HttpDnsOrigin;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/spdu/httpdns/HttpDns;->b:Lcom/spdu/httpdns/HttpDnsCacheTable;

    invoke-virtual {v1, p1}, Lcom/spdu/httpdns/HttpDnsCacheTable;->e(Ljava/lang/String;)Lcom/spdu/httpdns/HttpDnsOrigin;

    move-result-object v1

    .line 246
    if-nez v1, :cond_5

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getOriginByHttpDns :host "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " origin null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->f:Lcom/spdu/httpdns/b;

    invoke-virtual {v0}, Lcom/spdu/httpdns/b;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/spdu/httpdns/HttpDnsTools;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->b:Lcom/spdu/httpdns/HttpDnsCacheTable;

    invoke-virtual {v0, p1}, Lcom/spdu/httpdns/HttpDnsCacheTable;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/spdu/httpdns/HttpDns;->f:Lcom/spdu/httpdns/b;

    invoke-virtual {v0}, Lcom/spdu/httpdns/b;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "add host to nocachedomain!"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_NEWADD:Lcom/spdu/httpdns/ThreadType;

    invoke-virtual {p0, v0}, Lcom/spdu/httpdns/HttpDns;->a(Lcom/spdu/httpdns/ThreadType;)V

    :cond_4
    :goto_1
    move-object v0, v1

    .line 270
    goto :goto_0

    .line 250
    :cond_5
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsTools;->a()J

    move-result-wide v2

    .line 251
    invoke-virtual {v1}, Lcom/spdu/httpdns/HttpDnsOrigin;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_7

    .line 252
    invoke-static {}, Lcom/spdu/httpdns/b;->a()Lcom/spdu/httpdns/b;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Lcom/spdu/httpdns/b;->j()Z

    move-result v3

    if-nez v3, :cond_6

    .line 254
    const-string/jumbo v3, "[getOriginByHttpDns] time out Trigger"

    invoke-static {v3}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    .line 255
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/spdu/httpdns/b;->a(Z)V

    .line 256
    sget-object v2, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    invoke-virtual {p0, v2}, Lcom/spdu/httpdns/HttpDns;->a(Lcom/spdu/httpdns/ThreadType;)V

    .line 258
    :cond_6
    invoke-static {}, Lcom/spdu/httpdns/b;->r()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 259
    const-string/jumbo v1, "return null \u8d85\u8fc7\u8d85\u65f6\u7a97\u53e3."

    invoke-static {v1}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/spdu/httpdns/HttpDnsOrigin;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getOriginByHttpDns :host "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/spdu/httpdns/HttpDnsOrigin;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 266
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getOriginByHttpDns :host "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ip null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
