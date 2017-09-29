.class final Lcom/spdu/httpdns/b;
.super Ljava/lang/Object;
.source "HttpDnsArgs.java"


# static fields
.field private static C:Z

.field private static P:Z

.field private static R:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static S:Ljava/util/concurrent/atomic/AtomicLong;

.field public static s:J

.field public static x:J

.field public static y:J


# instance fields
.field private A:J

.field private B:Ljava/lang/String;

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:I

.field private G:Ljava/lang/String;

.field private H:I

.field private I:I

.field private J:I

.field private final K:Ljava/util/concurrent/locks/ReadWriteLock;

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private N:Z

.field private O:I

.field private Q:Z

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Z

.field public final t:Ljava/lang/String;

.field public u:J

.field public final v:Ljava/lang/String;

.field public w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    sput-boolean v2, Lcom/spdu/httpdns/b;->C:Z

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/spdu/httpdns/b;->P:Z

    .line 64
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/spdu/httpdns/b;->s:J

    .line 72
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/spdu/httpdns/b;->x:J

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/spdu/httpdns/b;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    const-wide/32 v0, 0x1d4c0

    sput-wide v0, Lcom/spdu/httpdns/b;->y:J

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/spdu/httpdns/b;->S:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, "http://"

    iput-object v0, p0, Lcom/spdu/httpdns/b;->a:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "\n"

    iput-object v0, p0, Lcom/spdu/httpdns/b;->b:Ljava/lang/String;

    .line 20
    iput v6, p0, Lcom/spdu/httpdns/b;->c:I

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/spdu/httpdns/b;->d:I

    .line 22
    iput v6, p0, Lcom/spdu/httpdns/b;->e:I

    .line 23
    iput v4, p0, Lcom/spdu/httpdns/b;->f:I

    .line 24
    iput v5, p0, Lcom/spdu/httpdns/b;->g:I

    .line 25
    const/16 v0, 0x8

    iput v0, p0, Lcom/spdu/httpdns/b;->h:I

    .line 27
    const/16 v0, 0x12c

    iput v0, p0, Lcom/spdu/httpdns/b;->i:I

    .line 28
    iput v5, p0, Lcom/spdu/httpdns/b;->j:I

    .line 29
    const/16 v0, 0x19

    iput v0, p0, Lcom/spdu/httpdns/b;->k:I

    .line 30
    const/16 v0, 0x32

    iput v0, p0, Lcom/spdu/httpdns/b;->l:I

    .line 31
    const/16 v0, 0x1d

    iput v0, p0, Lcom/spdu/httpdns/b;->m:I

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/spdu/httpdns/b;->n:I

    .line 33
    iput-wide v2, p0, Lcom/spdu/httpdns/b;->z:J

    .line 34
    iput-wide v2, p0, Lcom/spdu/httpdns/b;->A:J

    .line 38
    const-string/jumbo v0, "a-1.6.3"

    iput-object v0, p0, Lcom/spdu/httpdns/b;->o:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/spdu/httpdns/b;->B:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "android"

    iput-object v0, p0, Lcom/spdu/httpdns/b;->p:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "2.0"

    iput-object v0, p0, Lcom/spdu/httpdns/b;->q:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/spdu/httpdns/b;->r:Z

    .line 56
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 65
    const-string/jumbo v0, "datacollection.com"

    iput-object v0, p0, Lcom/spdu/httpdns/b;->t:Ljava/lang/String;

    .line 66
    iput-wide v2, p0, Lcom/spdu/httpdns/b;->u:J

    .line 68
    iput-boolean v4, p0, Lcom/spdu/httpdns/b;->Q:Z

    .line 70
    const-string/jumbo v0, "httpdns_HttpDnsArgs"

    iput-object v0, p0, Lcom/spdu/httpdns/b;->v:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/spdu/httpdns/b;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    iput-boolean v1, p0, Lcom/spdu/httpdns/b;->D:Z

    .line 94
    iput v1, p0, Lcom/spdu/httpdns/b;->O:I

    .line 95
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/spdu/httpdns/b;->H:I

    .line 96
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/spdu/httpdns/b;->I:I

    .line 97
    iput-boolean v1, p0, Lcom/spdu/httpdns/b;->N:Z

    .line 98
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/spdu/httpdns/b;->s:J

    .line 99
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/spdu/httpdns/b;->J:I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spdu/httpdns/b;->L:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spdu/httpdns/b;->M:Ljava/util/ArrayList;

    .line 104
    iget-object v0, p0, Lcom/spdu/httpdns/b;->M:Ljava/util/ArrayList;

    const-string/jumbo v1, "110.75.114.7"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/spdu/httpdns/b;->M:Ljava/util/ArrayList;

    const-string/jumbo v1, "42.156.162.8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const-string/jumbo v0, "httpdns.danuoyi.tbcache.com"

    iput-object v0, p0, Lcom/spdu/httpdns/b;->E:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "/multi_dns_resolve"

    iput-object v0, p0, Lcom/spdu/httpdns/b;->G:Ljava/lang/String;

    .line 108
    const/16 v0, 0x50

    iput v0, p0, Lcom/spdu/httpdns/b;->F:I

    .line 109
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsTools;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spdu/httpdns/b;->u:J

    .line 110
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/spdu/httpdns/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/spdu/httpdns/b;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/spdu/httpdns/c;->a:Lcom/spdu/httpdns/b;

    return-object v0
.end method

.method private a(J)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 283
    iput-wide p1, p0, Lcom/spdu/httpdns/b;->A:J

    .line 284
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 285
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/spdu/httpdns/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsCacheTable;->a()Lcom/spdu/httpdns/HttpDnsCacheTable;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "datacollection.com"

    invoke-virtual {v0, v1}, Lcom/spdu/httpdns/HttpDnsCacheTable;->a(Ljava/lang/String;)Z

    .line 116
    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 4

    .prologue
    .line 118
    sget-wide v0, Lcom/spdu/httpdns/b;->s:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 193
    sget-boolean v0, Lcom/spdu/httpdns/b;->C:Z

    return v0
.end method

.method public static p()V
    .locals 3

    .prologue
    .line 419
    sget-object v0, Lcom/spdu/httpdns/b;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 420
    sget-object v0, Lcom/spdu/httpdns/b;->S:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 421
    return-void
.end method

.method public static q()V
    .locals 2

    .prologue
    .line 425
    sget-object v0, Lcom/spdu/httpdns/b;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 426
    return-void
.end method

.method public static r()Z
    .locals 4

    .prologue
    .line 430
    sget-object v0, Lcom/spdu/httpdns/b;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/spdu/httpdns/b;->S:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/spdu/httpdns/b;->y:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()J
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 276
    iget-wide v0, p0, Lcom/spdu/httpdns/b;->A:J

    .line 277
    iget-object v2, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 278
    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 347
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    invoke-static {}, Lcom/spdu/httpdns/d;->a()Lcom/spdu/httpdns/d;

    move-result-object v1

    if-nez v1, :cond_2

    .line 351
    const-string/jumbo v1, "\u8bf7\u5148\u521d\u59cb\u5316httpdns"

    invoke-static {v1}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_2
    if-eqz p2, :cond_3

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 356
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mc\u4e3a\u7a7a   \ndomain:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "v=1.0&rand="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/spdu/httpdns/b;->J:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&hver=a-1.6.3&aver=android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spdu/httpdns/b;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    :goto_1
    iget-boolean v1, p0, Lcom/spdu/httpdns/b;->D:Z

    if-eqz v1, :cond_4

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&test=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_4
    invoke-static {}, Lcom/spdu/httpdns/NetworkManager;->a()Lcom/spdu/httpdns/NetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spdu/httpdns/NetworkManager;->c()Ljava/lang/String;

    move-result-object v1

    .line 368
    if-eqz v1, :cond_5

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "security http args:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "v=2.0&rand="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/spdu/httpdns/b;->J:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&mc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&hver=a-1.6.3&aver=android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spdu/httpdns/b;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public final a(ZI)Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    const-string/jumbo v0, "http://"

    .line 151
    if-eqz p1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/spdu/httpdns/b;->M:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget v1, p0, Lcom/spdu/httpdns/b;->J:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/spdu/httpdns/b;->M:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, v1, v2

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/spdu/httpdns/b;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "[getUrl] - Connect by fix ip : "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spdu/httpdns/b;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 169
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spdu/httpdns/b;->F:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spdu/httpdns/b;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    return-object v0

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 159
    iget-object v1, p0, Lcom/spdu/httpdns/b;->L:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spdu/httpdns/b;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string/jumbo v1, "[getUrl] - Connect by HOST."

    invoke-static {v1}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    .line 167
    :goto_1
    iget-object v1, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 163
    :cond_2
    iget v1, p0, Lcom/spdu/httpdns/b;->J:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/spdu/httpdns/b;->L:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/spdu/httpdns/b;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[getUrl] - Connect by NEW server IP. index = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 226
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/spdu/httpdns/b;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 230
    iget v0, p0, Lcom/spdu/httpdns/b;->O:I

    if-nez v0, :cond_1

    .line 231
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsTools;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spdu/httpdns/b;->u:J

    .line 233
    :cond_1
    iget v0, p0, Lcom/spdu/httpdns/b;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spdu/httpdns/b;->O:I

    .line 234
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 235
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 436
    if-nez p1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    const-string/jumbo v1, ""

    .line 443
    const-string/jumbo v0, ""

    .line 446
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 447
    if-eqz v2, :cond_3

    .line 448
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 451
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 452
    if-eqz v2, :cond_3

    .line 453
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 456
    if-nez v1, :cond_2

    .line 457
    const-string/jumbo v1, ""

    .line 459
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_4

    .line 462
    const-string/jumbo v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 463
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    .line 464
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/spdu/httpdns/b;->B:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    iget-object v2, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spdu/httpdns/b;->B:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 467
    :cond_4
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 4
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
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 130
    iget-object v1, p0, Lcom/spdu/httpdns/b;->L:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 131
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 132
    if-lez v1, :cond_0

    .line 133
    sput-boolean v0, Lcom/spdu/httpdns/b;->P:Z

    .line 135
    :cond_0
    :goto_0
    if-ge v0, v1, :cond_1

    .line 136
    iget-object v2, p0, Lcom/spdu/httpdns/b;->L:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 139
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 246
    iget-boolean v0, p0, Lcom/spdu/httpdns/b;->N:Z

    if-eq v0, p1, :cond_0

    .line 247
    iput-boolean p1, p0, Lcom/spdu/httpdns/b;->N:Z

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 250
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "http://"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spdu/httpdns/b;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spdu/httpdns/b;->F:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spdu/httpdns/b;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/spdu/httpdns/b;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/spdu/httpdns/b;->H:I

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/spdu/httpdns/b;->I:I

    return v0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/spdu/httpdns/b;->O:I

    .line 240
    invoke-static {}, Lcom/spdu/httpdns/HttpDnsTools;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spdu/httpdns/b;->u:J

    .line 241
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 242
    return-void
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 256
    iget-boolean v0, p0, Lcom/spdu/httpdns/b;->N:Z

    .line 257
    iget-object v1, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 258
    return v0
.end method

.method public final k()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v7, 0x1

    .line 304
    .line 305
    invoke-virtual {p0}, Lcom/spdu/httpdns/b;->s()Z

    .line 306
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 307
    iget v0, p0, Lcom/spdu/httpdns/b;->O:I

    const/16 v3, 0x8

    if-lt v0, v3, :cond_3

    move v0, v1

    .line 310
    :goto_0
    iget-object v3, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 312
    iget-object v3, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-wide v3, p0, Lcom/spdu/httpdns/b;->z:J

    iget-object v5, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    iput-wide v3, p0, Lcom/spdu/httpdns/b;->z:J

    iget-object v3, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {p0, v7, v8}, Lcom/spdu/httpdns/b;->a(J)V

    const-string/jumbo v3, "\u8d85\u8fc71s\u5f52\u96f6"

    invoke-static {v3}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/spdu/httpdns/b;->u()J

    move-result-wide v3

    const-wide/16 v5, 0xa

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5df2\u53d1\u9001:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/spdu/httpdns/b;->u()J

    move-result-wide v4

    sub-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    move v3, v2

    :goto_2
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 313
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "canHttpDnsQuery fail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/spdu/httpdns/b;->O:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " 8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    .line 314
    return v2

    .line 312
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6ca1\u6709\u8d85\u8fc71s\u8bbe\u7f6e\u4e3a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/spdu/httpdns/b;->u()J

    move-result-wide v4

    add-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/spdu/httpdns/b;->u()J

    move-result-wide v3

    add-long/2addr v3, v7

    invoke-direct {p0, v3, v4}, Lcom/spdu/httpdns/b;->a(J)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6bcf\u79d2\u5185\u4e0d\u53ef\u4ee5\u53d1\u9001\u6b21\u6570\u8fc7\u591a\uff0c\u5df2"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/spdu/httpdns/b;->u()J

    move-result-wide v4

    sub-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    move v3, v1

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_3

    :cond_3
    move v0, v2

    goto/16 :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    iget-object v1, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 320
    iget-object v1, p0, Lcom/spdu/httpdns/b;->L:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/spdu/httpdns/b;->P:Z

    if-eqz v1, :cond_1

    .line 321
    :cond_0
    const/4 v0, 0x1

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 325
    return v0
.end method

.method public final m()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 378
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 379
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 381
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 383
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/spdu/httpdns/b;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/spdu/httpdns/b;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 386
    const-string/jumbo v5, "ip"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 383
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 389
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 390
    const-string/jumbo v0, "host"

    iget-object v2, p0, Lcom/spdu/httpdns/b;->E:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    const-string/jumbo v0, "port"

    iget v2, p0, Lcom/spdu/httpdns/b;->F:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 392
    const-string/jumbo v0, "ips"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 398
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    move-object v0, v1

    .line 402
    :goto_1
    return-object v0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "create server Json failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 398
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    move-object v0, v1

    .line 399
    goto :goto_1

    .line 397
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 398
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    move-object v0, v1

    .line 399
    goto :goto_1

    :cond_2
    throw v0

    .line 402
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 407
    iget-boolean v0, p0, Lcom/spdu/httpdns/b;->Q:Z

    .line 408
    iget-object v1, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 409
    return v0
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spdu/httpdns/b;->Q:Z

    .line 415
    iget-object v0, p0, Lcom/spdu/httpdns/b;->K:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 416
    return-void
.end method

.method public final s()Z
    .locals 4

    .prologue
    .line 498
    iget v0, p0, Lcom/spdu/httpdns/b;->O:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/spdu/httpdns/b;->u:J

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    invoke-static {}, Lcom/spdu/httpdns/HttpDnsTools;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 499
    const-string/jumbo v0, "[clearFailCount] - true."

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/spdu/httpdns/b;->i()V

    .line 501
    const/4 v0, 0x1

    .line 503
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/spdu/httpdns/b;->J:I

    return v0
.end method
